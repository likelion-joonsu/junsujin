class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|

      t.timestamps null: false
      t.string "subject"
      t.text "stuff"
      t.string "img_file"
    end
  end
end
