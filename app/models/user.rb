class User < ApplicationRecord
    has_many :teams, :class_name => 'Team', :foreign_key => 'player1_id' 
    has_many :teams, :class_name => 'Team', :foreign_key => 'player2_id' 
    has_many :teams, :class_name => 'Team', :foreign_key => 'player3_id' 
    has_many :teams, :class_name => 'Team', :foreign_key => 'player4_id' 

    has_many :matches, through: :teams
  
    has_many :friends, :class_name => 'Friend', :foreign_key => 'friender_id'
    has_many :friends, :class_name => 'Friend', :foreign_key => 'friended_id'
    validates :username, uniqueness: { case_sensitive: false }
    has_secure_password
end
