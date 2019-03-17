class Recolectore < ApplicationRecord#ActiveRecord::Base
  has_many: recolectores
  has_many: recolectaspendientes
  belongs_to: recolectasrealizada
  VALID_EMAIL_REGEX = \A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z
  validates :nombre, presence: true, length: { maximum: 50}
  validates :apellido, presence: true, length: {maximum: 400}
  validates :telefono, presence: true, length: {minimum: 7, maximum: 20}
  validates :correo, presence: true, length: {minimum: 5, maximum: 70}, format: {with: VALID_EMAIL_REGEX}
end
