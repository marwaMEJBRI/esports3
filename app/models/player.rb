class Player < ApplicationRecord
    belongs_to :users
    belongs_to :teams
end
