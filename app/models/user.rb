class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true
    validates :email,presence: true,
    format:{with: VALID_EMAIL_REGEX},
    uniqueness: true
    validates :password,presence: true
    validates :sex,presence: true
    validates :birthday,presence: true

    has_secure_password
    has_many :usercomments
end
