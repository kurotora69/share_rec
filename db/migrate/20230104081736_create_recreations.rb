class CreateRecreations < ActiveRecord::Migration[6.0]
  def change
    create_table :recreations do |t|
      t.string     :title,       null: false
      t.text       :explanation, null: false
      t.text       :tool,        null: false
      t.string     :posture,     null: false
      t.string     :place,       null: false
      t.integer    :staff_number,null: false
      t.integer    :care_number, null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
