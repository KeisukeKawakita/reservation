class Public::SchedulesController < ApplicationController
	def create
		schedule = Schedule.new(schedule_params)
		schedule.save
		redirect_to reservations_path
	end

	def edit
		@schedule = Schedule.find(params[:id])
	end

	def update
		@schedule = Schedule.find(params[:id])
		@schedule.update(schedule_params)
		redirect_to day_path(@schedule.schedule_day)
	end

	def destroy
		@schedule = Schedule.find(params[:id])
		@schedule.destroy
		redirect_to request.referer
	end

	private

	def schedule_params
		params.require(:schedule).permit(:name, :introduction, :schedule_day)
	end
end
