class Jmoviecomment < ApplicationRecord
    belongs_to :user
    belongs_to :jmovie
    validates :title, presence: true
    validates :star, presence: true
    validates :description, presence: true

end
