class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :parent, index: true
      t.references :con, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :places, :parents
  end
end
