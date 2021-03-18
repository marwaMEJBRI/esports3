class Team < ApplicationRecord
    validates :name, presence: true
    has_many :relation
    belongs_to :tournament   
end
