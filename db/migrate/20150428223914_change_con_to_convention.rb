class ChangeConToConvention < ActiveRecord::Migration
  def change
    rename_table :cons, :conventions
    rename_column :events, :con_id, :convention_id
    rename_column :places, :con_id, :convention_id
    rename_column :schedules, :con_id, :convention_id
  end
end
