class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :status
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :zip
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
