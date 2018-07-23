class CreateWeathers < ActiveRecord::Migration[5.2]
  def change
    create_table :weathers do |t|
      t.references :city, foreign_key: true
      t.string :description
      t.string :temp
      t.string :wind
      t.string :humidity

      t.timestamps
    end
  end
end
