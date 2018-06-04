class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  # Password digest generation (happens automatically as virtual attribute)
  # def password=(password)
  #   @password = password
  #   generate_password_digest(@password)
  # end

end
