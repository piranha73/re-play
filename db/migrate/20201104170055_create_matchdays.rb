class CreateMatchdays < ActiveRecord::Migration[6.0]
  def change
    create_table :matchdays do |t|
      t.integer :number
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
