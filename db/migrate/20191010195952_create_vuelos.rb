class CreateVuelos < ActiveRecord::Migration[6.0]
  def change
    create_table :vuelos do |t|
      t.string :numvuelo
      t.datetime :fechaprogramado
      t.datetime :fechareal
      t.string :estado
      t.string :direccion
      t.references :aerolinea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
