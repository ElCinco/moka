class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :phone_number
      t.integer :age
      t.integer :gender
      t.string :state
      t.boolean :smoker
      
      t.timestamps
    end
  end
end
