class Fmovie < ApplicationRecord
    has_many :fmoviecomments
    has_many :likes

    def avg_score
        unless self.fmoviecomments.empty?
            fmoviecomments.average(:star).round(1).to_f
        else
            0.0
        end
    end

  
end
