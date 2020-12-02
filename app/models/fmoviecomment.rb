class Fmoviecomment < ApplicationRecord
    belongs_to :user
    belongs_to :fmovie
    validates :title, presence: true
    validates :star, presence: true
    validates :description, presence: true
end
