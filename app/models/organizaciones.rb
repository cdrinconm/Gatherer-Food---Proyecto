class Organizaciones < ApplicationRecord
  validates :nombre, presence: true, length: {minimum: 5, maximum: 50}
  validates :direccion, presence: true, length: {minimum: 5, maximum: 50}
  validates :representante, presence: true, length: {minimum: 4, maximum: 50}
  validates :telefonoRepresentante, presence: true, length: {minimum: 7, maximum: 20}
  validates :direccionUrl, presence: true, length: {minimum: 5, maximum: 100}
  validates :descripcion, presence: true, length: {minimum: 20, maximum: 500}
end