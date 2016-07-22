class AdminController < ApplicationController
	before_action :admin_check
  # GET /lessons
  # GET /lessons.json
    def admin_check

    	if current_user.admin == false

      		redirect_to main_index_path

    	end
	end

	def index
		@users = User.all
  		@chars = Character.all
             @tokens = ApiKey.all
	end

      def new_token
        ApiKey.create!
        redirect_to admin_index_path
      end

      def delete_token
        @token = ApiKey.where(id: params[:token]).first
        @token.destroy
        respond_to do |format|
          format.html { redirect_to admin_index_path, notice: 'token excluido com sucesso' }
          format.json { head :no_content }
        end
      end

end

