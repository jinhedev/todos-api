class User < ApplicationRecord

  # encryot password
  has_secure_password

  # Model association
  has_many :todos, foreign_key: :created_by

  # Validations
  validates_presence_of :name, :email, :password_digest

end
