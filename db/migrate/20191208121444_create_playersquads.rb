class CreatePlayersquads < ActiveRecord::Migration[6.0]
  def change
    create_table :playersquads do |t|
      t.integer :squad_id
      t.integer :player_id

      t.timestamps
    end
  end
end
