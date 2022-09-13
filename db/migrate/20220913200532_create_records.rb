class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :image_url
      t.string :artist
      t.string :album
      t.integer :year
      t.string :track_list
    end
  end
end
