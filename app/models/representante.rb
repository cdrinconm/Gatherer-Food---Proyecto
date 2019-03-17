class Representante < ApplicationRecord
  validates :nombre, presence: true, length: {minimum: 3, maximum: 50}
  validates :apellido, presence: true, length: {minimum: 3, maximum: 50}
  validates :organizacion, presence: true, length: {minimum: 5, maximum: 50}
  validates :edad, presence: true, length: {minimum: 18}
  validates :telefono, presence: true, length: {minimum: 7, maximum: 20}     
end