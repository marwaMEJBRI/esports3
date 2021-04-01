class Round < ApplicationRecord
    has_many :teams
    has_many :matches
    belongs_to :scores
end
