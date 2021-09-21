class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.text :status
      t.date :start_date
      t.date :end_date
      t.decimal :payout_amount, precision: 8, scale: 2
      t.decimal :security_amount, precision: 8, scale: 2
      t.decimal :total_amount, precision: 8, scale: 2
      t.text :currency

      t.timestamps
    end
  end
end
