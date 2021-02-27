class CreateReviewsTable < ActiveRecord::Migration[5.2]

  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :rating
      t.integer :cigar_id
      t.integer :user_id
      t.timestamps null: false
    end
  end

end
