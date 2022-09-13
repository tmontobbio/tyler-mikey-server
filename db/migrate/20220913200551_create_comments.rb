class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :body
      t.datetime :date
      t.integer :user_id
      t.integer :record_id
    end
  end
end
