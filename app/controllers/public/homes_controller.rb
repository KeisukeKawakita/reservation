class Public::HomesController < ApplicationController
	def top
		@reservations = Reservation.where(start_time: Date.today..Float::INFINITY)
		@schedules = Schedule.all.order(schedule_day: "ASC")
	end

	private

	def reservation_count(reservation)
		10 - reservation.count.to_i
	end

	helper_method :reservation_count
end
