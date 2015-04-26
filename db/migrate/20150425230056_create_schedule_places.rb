class CreateSchedulePlaces < ActiveRecord::Migration
  def change
    create_table :schedule_places do |t|
      t.references :place, index: true
      t.references :schedule, index: true

      t.timestamps null: false
    end
    add_foreign_key :schedule_places, :places
    add_foreign_key :schedule_places, :schedules
  end
end
