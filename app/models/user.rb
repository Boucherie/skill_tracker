class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  has_many :posts
  # Password digest generation (happens automatically as virtual attribute)
  # def password=(password)
  #   @password = password
  #   generate_password_digest(@password)
  # end
  validates :email, presence: true, uniquness: true

end
