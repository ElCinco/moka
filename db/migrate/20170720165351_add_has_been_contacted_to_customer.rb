class AddHasBeenContactedToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :has_been_contacted, :boolean
  end
end
