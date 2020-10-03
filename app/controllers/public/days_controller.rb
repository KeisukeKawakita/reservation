class Public::DaysController < ApplicationController
	def show
		@id = params[:id]
		@reservations = Reservation.where(start_time: @id)
		@schedules = Schedule.where(schedule_day: @id)
		@time = @id.to_s
		@reservation = Reservation.new
		@schedule = Schedule.new
		@contact = Contact.new
	end

    private

    def reservation_count(reservation)
		10 - reservation.count.to_i
	end

	helper_method :reservation_count
end
