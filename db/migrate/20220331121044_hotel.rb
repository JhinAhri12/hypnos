class Hotel < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :city
      t.string :email
      t.string :adress
      t.string :description 

      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
