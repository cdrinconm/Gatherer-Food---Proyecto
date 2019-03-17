class User < ApplicationRecord
    validates :nombre, presence: true, length: {minimum: 3 , maximum: 25}
    validates :apellido, presence: true, length: {minimum: 3 , maximum: 25}
    validates :usuario, presence: true, length: {minimum: 1 , maximum: 25}, uniqueness: {case_sensitive: false}
    validates :contrasena, presence: true, length: {minimum: 6 , maximum: 25}
    validates :empresa, presence: true, length: {minimum: 1 , maximum: 25}
end