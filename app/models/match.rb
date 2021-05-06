class Match < ApplicationRecord
 validates :name, presence: true
 has_many :relation
 has_many :teams, through: :relation , dependent: :destroy
 belongs_to :tournament
 
end
