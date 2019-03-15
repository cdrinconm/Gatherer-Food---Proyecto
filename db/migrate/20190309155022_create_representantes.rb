class CreateRepresentantes < ActiveRecord::Migration[5.0]
  def change
    create_table :representantes do |t|
      t.string :nombre
      t.string :apellido
      t.numeric :edad
      t.string :telefono
      t.string :organizacion
      t.datetime :created_at
      t.datetime :updated_at      
    end
  end
end
