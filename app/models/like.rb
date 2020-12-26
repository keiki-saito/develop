class Like < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :jmovie, optional: true
    belongs_to :fmovie, optional: true
    belongs_to :janime, optional: true
    belongs_to :original, optional: true
end
