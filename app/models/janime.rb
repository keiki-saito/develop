class Janime < ApplicationRecord
    has_many :janimecomments
    has_many :likes
    

    def avg_score
        unless self.janimecomments.empty?
            janimecomments.average(:star).round(1).to_f
        else
            0.0
        end
    end


    def liked_by?(user)
        likes.where(user_id: user.id).exists?
    end

    
end
