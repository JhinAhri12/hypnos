class Booking < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.boolean :is_available,default: true

      t.references :user, null: false, foreign_key: true
      t.references :suite, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true
      t.timestamps
    end
  end
end
