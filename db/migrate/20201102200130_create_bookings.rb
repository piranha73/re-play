class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :requested_booking_fields

      t.timestamps
    end
  end
end
