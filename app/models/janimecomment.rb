class Janimecomment < ApplicationRecord
    belongs_to :user
    belongs_to :janime
    validates :title, presence: true
    validates :star, presence: true
    validates :description, presence: true
end
