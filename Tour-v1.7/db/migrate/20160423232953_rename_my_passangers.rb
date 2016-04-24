class RenameMyPassangers < ActiveRecord::Migration
  def change
    rename_table :passangers, :passengers
  end
end
