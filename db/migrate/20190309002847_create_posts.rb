class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :descripcion
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
