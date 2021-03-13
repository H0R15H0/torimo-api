class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :main_place
      t.integer :budget

      t.timestamps
    end
  end
end
