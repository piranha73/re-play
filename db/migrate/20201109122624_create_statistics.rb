class CreateStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :statistics do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
