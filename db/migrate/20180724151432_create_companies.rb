class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_type
      t.string :name

      t.timestamps
    end
  end
end
