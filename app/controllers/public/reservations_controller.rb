class Public::ReservationsController < ApplicationController
	before_action :authenticate_end_user!
	def index
		@reservations = Reservation.all
		@my_reservations = current_end_user.reservations
	end

	def new
		@reservation = Reservation.new
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def create
		reservation = Reservation.new(reservation_params)
		reservation.end_user_id = current_end_user.id
		reservation.save
		redirect_to reservations_path
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to end_users_path, notice:"削除しました"
	end

	private

	def reservation_params
		params.require(:reservation).permit(:time, :start_time)
	end

	def reservation_count(reservation)
		10 - reservation.count.to_i
	end

	helper_method :reservation_count
end
