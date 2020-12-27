class Fmoviecomment < ApplicationRecord
    belongs_to :user
    belongs_to :fmovie
    validates :title, presence: true
    validates :star, presence: true
    validates :description, presence: true

    def self.sort(selection)
        case selection
        when 'new'
          return all.order(created_at: :DESC)
        when 'old'
        end
    end
end
