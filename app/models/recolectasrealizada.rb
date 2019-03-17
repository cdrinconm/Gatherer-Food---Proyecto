class Recolectasrealizada < ApplicationRecord
  validates :organizacion, presence: true, length: {minimum: 5, maximum: 50}
  validates :fecha, presence: true
  validates :direccion, presence: true, length: {minimum: 10, maximum: 50}
  validates :cantidadKilos, presence: true, length: {minimum: 0}
end