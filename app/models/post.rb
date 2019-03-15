class Post < ApplicationRecord#ActiveRecord::Base
  validates :titulo, presence: true, length: {minimum: 3, maximum: 50}
  validates :descripcion, presence: true, length: {minimum: 50, maximum: 400}
end

class Rep < ApplicationRecord
end

class Bar < ApplicationRecord
end

class ReP < ApplicationRecord
end

class ReR < ApplicationRecord
end