class Team < ApplicationRecord
   # validates :name, presence: true
    #has_many :matches, through: :relation , dependent: :destroy
 # belongs_to :tournament
   # has_many :users
    #has_many :relation
   # has_many :join_requests
    #has_many :requesting_members, through: :join_requests, source: :user
  # belongs_to :match
    
  # match_count (game) return number of matches in this game 
  # def match_count(tournament)
  #   roster = rosters.where(tournament_id: tournament.id).first
  #   Match.where(left_team: roster).or(Match.where(right_team: roster)).count
  # end

  # # win count (game) return the number of won match 
  # def win_count(tournament)
  #   roster = rosters.where(tournament_id: tournament.id).first
  #   Match.where(left_team: roster).where('left_score > right_score').or(
  #     Match.where(right_team: roster).where('right_score > left_score')
  #   ).count
  # end
end


