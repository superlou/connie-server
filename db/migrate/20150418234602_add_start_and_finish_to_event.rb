class AddStartAndFinishToEvent < ActiveRecord::Migration
  def change
    add_column :events, :start, :datetime
    add_column :events, :finish, :datetime
  end
end
