class Recolectore < ApplicationRecord#ActiveRecord::Base
  validates :nombre, presence: true, length: { maximum: 50}
  validates :apellido, presence: true, length: {maximum: 400}
  validates :telefono, presence: true, length: {minimum: 7, maximum: 20}
  validates :correo, presence: true, length: {minimum: 5, maximum: 70}
end
