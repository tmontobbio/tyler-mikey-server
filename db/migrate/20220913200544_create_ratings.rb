class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :record_id
    end
  end
end
