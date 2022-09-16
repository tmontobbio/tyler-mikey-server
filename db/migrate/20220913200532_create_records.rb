class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :artist
      t.string :album
      t.integer :year
      t.string :description
      t.string :image_url
    end
  end
end
