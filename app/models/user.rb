class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role 
  has_many :players
 has_many :likes
 has_many :liked_teams,through: :likes, source: :product

  def assign_default_role
    self.add_role(:player) if self.roles.blank?
  end 
end
