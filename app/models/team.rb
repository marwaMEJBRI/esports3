class Team < ApplicationRecord
    validates :name, presence: true
    #has_many :matches, through: :relation , dependent: :destroy
  belongs_to :tournament
    has_many :players
    has_many :relation
end

