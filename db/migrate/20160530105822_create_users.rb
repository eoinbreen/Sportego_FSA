class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.string :country
      t.date :dob

      t.timestamps null: false
    end
  end
end
