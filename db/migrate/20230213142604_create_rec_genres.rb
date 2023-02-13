class CreateRecGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :rec_genres do |t|

      t.timestamps
    end
  end
end
