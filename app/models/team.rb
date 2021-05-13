class Team < ApplicationRecord
    validates :name, presence: true
    #has_many :matches, through: :relation , dependent: :destroy
  belongs_to :tournament
    has_many :users
    has_many :relation
    has_many :join_requests
    #has_many :requesting_members, through: :join_requests, source: :user
    has_many :memberships
    has_many :members, through: :memberships, source: :user
end

