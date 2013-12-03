class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_user_type
      t.string :identification
      t.string :username
      t.string :password
      t.string :name
      t.text :address
      t.string :mobile
      t.integer :status
      t.string :email
      t.timestamps
    end
  end
end
