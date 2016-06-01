class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :country
      t.string :card
      t.float :balance, :limit => 2
      t.date :dob

      t.timestamps null: false
    end
  end
end
