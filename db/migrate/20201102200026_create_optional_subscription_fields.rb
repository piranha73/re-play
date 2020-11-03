class CreateOptionalSubscriptionFields < ActiveRecord::Migration[6.0]
  def change
    create_table :optional_subscription_fields do |t|
      t.string :role
      t.boolean :team
      t.integer :player_number

      t.timestamps
    end
  end
end
