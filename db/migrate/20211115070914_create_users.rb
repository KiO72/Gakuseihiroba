class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :pass
      t.string :uid
      t.integer :user_id
      
      t.timestamps
    end
  end
end
