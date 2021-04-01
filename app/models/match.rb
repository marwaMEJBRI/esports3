class Match < ApplicationRecord
 validates :name, presence: true
 has_many :relation
 has_many :team, through: :relation, source: :team 
 belongs_to :tournament
has_many :rounds
 
 def 
end
