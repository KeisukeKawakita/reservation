class Public::EndUsersController < ApplicationController
	def show
		@end_user = current_end_user
		@my_reservations = @end_user.reservations
	end
end
