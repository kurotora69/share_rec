class CreateGenreTags < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_tags do |t|

      t.timestamps
    end
  end
end
