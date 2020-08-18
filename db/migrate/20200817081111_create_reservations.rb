class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|

      t.integer :end_user_id
      t.datetime :start_time
      t.integer :time, default: 0, null: false
      t.timestamps
    end
  end
end
