class AddDetailedFieldsToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :coverage_amount, :integer
    add_column :customers, :customer_name, :string
    add_column :customers, :weight, :integer
    add_column :customers, :height, :string
    add_column :customers, :marriage_status, :integer
    add_column :customers, :children, :integer
    add_column :customers, :income_range, :string
    add_column :customers, :health_rating, :integer
    add_column :customers, :currently_has_policy, :boolean
  end
end
