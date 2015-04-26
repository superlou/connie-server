class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :start
      t.datetime :finish
      t.string :name
      t.references :con, index: true


      t.timestamps null: false
    end
  end
end
