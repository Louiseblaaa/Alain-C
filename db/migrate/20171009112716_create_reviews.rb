class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.string :picture_review
      t.string :theme_review

      t.timestamps
    end
  end
end
