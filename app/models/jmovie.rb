class Jmovie < ApplicationRecord
    has_many :jmoviecomments
    has_many :likes
    def avg_score
        unless self.jmoviecomments.empty?
            jmoviecomments.average(:star).round(1).to_f
        else
            0.0
        end
    end

    
end
