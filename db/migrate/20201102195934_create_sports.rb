class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
