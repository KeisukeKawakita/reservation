class Public::DaysController < ApplicationController
	def show
		@id = params[:id]
		@reservations = Reservation.where('start_time LIKE?', "%#{@id}%")
		@time = @id.to_s
		@reservation = Reservation.new
		@schedule = Schedule.new
	end
end
