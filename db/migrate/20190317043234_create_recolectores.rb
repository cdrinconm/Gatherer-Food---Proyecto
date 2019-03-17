class CreateRecolectores < ActiveRecord::Migration[5.0]
  def change
    create_table :recolectores do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :correo
    end
  end
end
