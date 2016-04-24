class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.string :location
      t.decimal :cost


      t.timestamps null: false
    end
  end
end
