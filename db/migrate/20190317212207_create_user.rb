class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :usuario
      t.string :contrasena
      t.string :empresa
    end
  end
end
