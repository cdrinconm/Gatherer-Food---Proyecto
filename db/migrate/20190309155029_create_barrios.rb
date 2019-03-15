class CreateBarrio < ActiveRecord::Migration[5.0]
  def change
    create_table :barrios do |t|
      t.string :nombre
      t.numeric :habitantesBeneficiados
      t.text :ubicacion
      t.datetime :created_at
      t.datetime :updated_at   
    end
  end
end
