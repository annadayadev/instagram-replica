class CreatePics < ActiveRecord::Migration[5.2]
  def change
    create_table :pics do |t|
      t.string :title
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
