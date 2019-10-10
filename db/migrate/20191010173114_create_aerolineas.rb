class CreateAerolineas < ActiveRecord::Migration[6.0]
  def change
    create_table :aerolineas do |t|
      t.integer :idAerolinea
      t.string :nombre
      t.string :iatacode
      t.string :oaci

      t.timestamps
    end
  end
end
