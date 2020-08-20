class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|

      t.string :name
      t.string :introduction
      t.date :schedule_day
      t.timestamps
    end
  end
end
