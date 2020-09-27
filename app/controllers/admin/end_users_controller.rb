class Admin::EndUsersController < ApplicationController
	before_action :authenticate_admin!
	def index
		@end_users = EndUser.all
	end

	def destroy
		@end_user = EndUser.find(params[:id])
		@end_user.destroy
		flash[:success] = 'ユーザーを削除しました。'
		redirect_to root_path
	end
end
