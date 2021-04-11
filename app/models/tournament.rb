class Tournament < ApplicationRecord
    validates :name, presence: true
    has_many :matches
    has_many :team
    def random_team
        self.limit(2).offset (rand(@team)).first
    end
end
