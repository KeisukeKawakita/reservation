class Public::HomesController < ApplicationController
	def top
		@reservations = Reservation.all
		@schedules = Schedule.all
	end
end
