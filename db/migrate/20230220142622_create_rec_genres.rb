class CreateRecGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :rec_genres do |t|
      t.references :recreation, null: false, foreign_key: true
      t.references :genre_tag, null: false, foreign_key: true
      t.timestamps
    end
  end
end
