class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :message
      t.date :start_time
      t.integer :time, default: 0, null: false

      t.timestamps
    end
  end
end
