class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :age
      t.string :img
      t.string :country
      t.string :flagicon

      t.timestamps
    end
  end
end
