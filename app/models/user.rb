class User < ApplicationRecord
    has_secure_password
    has_many :games

    validates :username, :password, presence: true
    validates :username, length: { minimum: 6, maximum: 16, message: "Username must be between 6 and 16 characters long."}
    validates :password, length: { minimum: 6, maximum: 16, message: "Password must be between 6 and 16 characters long."}
    validates :username, uniqueness: {message: "%{value} has already been taken."}
end
