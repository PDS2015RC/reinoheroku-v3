class QuizController < ApplicationController



  def index
    @characters = Character.where(user_id: current_user)
    if(@characters.size >= 1)
        @lesson = Lesson.new(lesson_params)
        @video = @lesson.url
        @questions = Question.where(lesson: @lesson.subject).order("RANDOM()").limit(5)
        @i = 0
        @character_life = 3 #TO-DO, character must have life attribute
        @life = @character_life
        @current_question = @questions[@i]
        @questions = @questions.ids.map(&:to_s)
        @score = 0
        @path = :answer_question_quiz_index
        @remote = true
    else
      redirect_to characters_url
    end
  end

  def answer_question

      @life = params[:life].to_i
      @answer = params[:answer]
      @statement = params[:statement]
      @question = Question.where(statement: @statement).first
      @character_life = params[:character_life].to_i
      @i = params[:i].to_i
      @score = params[:score].to_i
      if (@answer == @question.a)
        @score = @score + 1
      else
        @life = @life.to_i - 1
      end
      @i = @i + 1
      if(@i == 5 && @life > 0)
        @question = Question.where(statement: params[:statement]).first
        @lesson = Lesson.where(subject: @question.lesson).first
        @character = Character.where(user_id: current_user).first
        @state = 'jogando'
        @result = @score
        @done_lesson = DoneLesson.where("lesson_id = ? AND character_id = ?", @lesson.id, @character.id).order(id: :asc).first

        if @done_lesson == nil
          @done_lesson = DoneLesson.new
          @done_lesson.lesson_id = @lesson.id
          @done_lesson.character_id = @character.id
          @done_lesson.score = @result
          @done_lesson.save
          @xp_mult = @result * 10
          @gold_mult = @result * 5
          @character.correct += @result
          @character.wrong += 5 - @result
          @character.xp += @xp_mult
          @character.gold += @gold_mult
          @state = 'ganhou'
          if @character.xp >= 200
            @character.xp = 0
            @character.level += 1
          end
          @character.save
        elsif @done_lesson.score < @result
          @done_lesson.score = @result
          @done_lesson.save
          @xp_mult = @result * 10
          @gold_mult = @result * 5
          @character.correct += @result
          @character.wrong += 5 - @result
          @character.xp += @xp_mult
          @character.gold += @gold_mult
          @state = 'ganhou'
          if @character.xp >= 200
            @character.xp = 0
            @character.level += 1
          end
          @character.save
        elsif @done_lesson.score >= @result
          @state = 'empatou'
        end
          respond_to do |format|
            format.js {render :template => "quiz/answer.js.erb"}
          end
       elsif @life <=0
          @state = 'perdeu'
          respond_to do |format|
            format.js {render :template => "quiz/answer.js.erb"}
          end
       else
      @questions = params[:questions]
      @current_question = @questions[@i]
      @current_question = Question.find(@current_question)
      respond_to do |format|
        format.js {}
      end
  end
  end

  def catalog
    if(@characters.size >= 1)
      @character = Character.where(user_id: current_user).first
      @done_lessons = DoneLesson.where(character_id: @character.id)
    end
  end

  def gerar_quiz

  end

  def answer
  end

  def lesson_params
      params.permit(:subject, :url)
  end


end
