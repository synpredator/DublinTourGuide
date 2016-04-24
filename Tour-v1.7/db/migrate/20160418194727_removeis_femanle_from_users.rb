class RemoveisFemanleFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :is_female
  end
end
