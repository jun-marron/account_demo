class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :number
      t.integer :address1
      t.string :address2
      t.date :birthday

      t.timestamps
    end
  end
end
