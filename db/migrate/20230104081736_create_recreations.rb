class CreateRecreations < ActiveRecord::Migration[6.0]
  def change
    create_table :recreations do |t|

      t.timestamps
    end
  end
end
