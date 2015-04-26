class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :event, index: true
      t.references :reservable, index: true, polymorphic: true

      t.timestamps null: false
    end
    add_foreign_key :reservations, :events
    add_foreign_key :reservations, :reservables
  end
end
