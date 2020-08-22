class Public::EndUsersController < ApplicationController
	before_action :authenticate_end_user!
	def show
		@end_user = current_end_user
		@my_reservations = @end_user.reservations.where(start_time: Date.today..Float::INFINITY).order(start_time: "ASC")
	end

	def edit
		@end_user = current_end_user
	end

	def update
		current_end_user.update(user_params)
		redirect_to end_users_path
	end

	private

	def user_params
		params.require(:end_user).permit(:name, :name_kana, :telephone_number, :mail)
	end
end
