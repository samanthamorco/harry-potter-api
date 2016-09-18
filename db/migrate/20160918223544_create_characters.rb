class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :house

      t.timestamps
    end
  end
end
