class Usercomment < ApplicationRecord
    validates :title,presence: true
    validates :description,presence: true
    belongs_to :user
    #belongs_to :japananime
    belongs_to :movie
end
