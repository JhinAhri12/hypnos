class Suite < ActiveRecord::Migration[7.0]
  def change
    create_table :suites do |t|
      t.string :title
      t.string :main_image
      t.string :description
      t.string :price
      t.string :other_image 
      t.string :link

      t.references :user, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true
      t.timestamps
    end
  end
end
