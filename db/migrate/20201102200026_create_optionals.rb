class CreateOptionals < ActiveRecord::Migration[6.0]
  def change
    create_table :optionals do |t|
      t.boolean :role, default: false
      t.boolean :team, default: true
      t.boolean :player_number, default: false

      t.timestamps
    end
  end
end
