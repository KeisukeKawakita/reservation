class Public::SchedulesController < ApplicationController
	def create
		schedule = Schedule.new(schedule_params)
		schedule.save
		redirect_to reservations_path
	end

	private

	def schedule_params
		params.require(:schedule).permit(:name, :introduction, :schedule_day)
	end
end
