class CreateStructures < ActiveRecord::Migration[6.0]
  def change
    create_table :structures do |t|
      t.string :type
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
