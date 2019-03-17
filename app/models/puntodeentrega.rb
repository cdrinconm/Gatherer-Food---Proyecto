class Puntodeentrega < ApplicationRecord
  validates :nombre, presence: true, length: {minimum: 1, maximum: 50}
  validates :habitantesBeneficiados, presence: true, length: {minimum: 0}
  validates :ubicacion, presence: true, length: {minimum: 1, maximum: 500}
end