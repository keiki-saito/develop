class Original < ApplicationRecord
    has_many :originalcomments
    has_many :likes
    def avg_score
        unless self.originalcomments.empty?
            originalcomments.average(:star).round(1).to_f
        else
            0.0
        end
    end
end
