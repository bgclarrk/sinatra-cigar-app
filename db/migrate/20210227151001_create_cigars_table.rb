class CreateCigarsTable < ActiveRecord::Migration[5.2]

  def change
    create_table :cigars do |t|
      t.string :name
      t.string :brand
      t.integer :length
      t.integer :guage
      t.string :country
      t.string :filler
      t.string :wrapper
      t.string :color
      t.string :strength
      t.timestamps null: false
    end
  end

end