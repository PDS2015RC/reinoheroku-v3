class Api::V1::QuestionsController < ApplicationController
    #http_basic_authenticate_with name:"admin", password: "secret"
    skip_before_action :authenticate_user!
    before_filter :restrict_access

    def index
        @questions = Question.all
        respond_to do |format|
            format.json { render :json => @questions}
        end
    end

    private
    def restrict_access
        api_key = ApiKey.find_by_access_token(params[:access_token])
        head :unauthorized unless api_key
    end
end
