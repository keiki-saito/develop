class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

    
    validates :name, presence: true
    validates :email,presence: true
    validates :password,presence: true
    # validates :sex,presence: true
    # validates :birthday,presence: true

    has_secure_password
    has_many :janimecomments
    
    has_many :jmoviecomments
    has_many :fmoviecomments
    has_many :originalcomments
    has_many :jtvcomments
    has_many :likes


    has_many :like_janime, through: :likes, source: :janime
    has_many :like_jmovie, through: :likes, source: :jmovie
    has_many :like_fmovie, through: :likes, source: :fmovie
    has_many :like_original, through: :likes, source: :original

   
     

    
end
