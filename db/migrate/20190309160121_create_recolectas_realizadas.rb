class CreateRecolectasRealizadas < ActiveRecord::Migration[5.0]
  def change
    create_table :recolectas_realizadas do |t|
      t.string :organizacion
      t.datetime :fecha
      t.string :direccion
      t.numeric :cantidadKilos
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
