class User < ApplicationRecord
    
    validates :name, presence: true
    validates :email,presence: true
    validates :password,presence: true
    # validates :sex,presence: true
    # validates :birthday,presence: true

    has_secure_password
    has_many :janimecomments
    
    has_many :jmoviecomments
    has_many :fmoviecomments
end
