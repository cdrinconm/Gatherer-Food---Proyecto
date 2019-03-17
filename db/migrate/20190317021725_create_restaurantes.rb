class CreateRestaurantes < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.string :direccion
      t.string :representante
      t.string :telefonoRepresentante
      t.string :direccionUrl
      t.text :descripcion
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
