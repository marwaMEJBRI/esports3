class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role 

  has_many :players
belongs_to :users

  def assign_default_role
    self.add_role(:player) if self.roles.blank?
  end 
  has_many :join_requests
  #has_many :requested_teams, through: :join_requests, source: :team

  has_many :memberships
  has_many :teams, through: :memberships
  has_many :organizers
 # has_many :tournaments, through: :organizers
end
