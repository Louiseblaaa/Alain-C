class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.datetime :created_at
      t.datetime :updated_at
      t.references :theme, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
