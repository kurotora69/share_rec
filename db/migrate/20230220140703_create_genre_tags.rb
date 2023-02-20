class CreateGenreTags < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_tags do |t|
      t.integer :genre_tag_id, null: false
      t.timestamps
    end
  end
end
