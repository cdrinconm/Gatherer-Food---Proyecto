class CreatePuntodeentregas < ActiveRecord::Migration[5.0]
  def change
    create_table :puntodeentregas do |t|
      t.string :nombre
      t.integer :habitantesBeneficiados
      t.text :ubicacion
      t.datetime :created_at
      t.datetime :updated_at   
    end
  end
end
