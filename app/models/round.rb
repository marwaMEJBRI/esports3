class Round < ApplicationRecord
    has_many :teams
    has_many :Roundmatch

    belongs_to :scores
    
end
