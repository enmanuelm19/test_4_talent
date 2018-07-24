class CreatePostulations < ActiveRecord::Migration[5.2]
  def change
    create_table :postulations do |t|
      t.string :name
      t.references :benefit, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
