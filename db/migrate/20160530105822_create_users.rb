class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :country
      t.string :card
      t.decimal :balance, default: '10.555555555555'
      t.date :dob

      t.timestamps null: false
    end
  end
end
