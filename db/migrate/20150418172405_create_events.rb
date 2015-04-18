class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.references :con, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :cons
  end
end
