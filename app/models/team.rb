class Team < ApplicationRecord
    belongs_to :player1, :class_name => 'User'
    belongs_to :player2, :class_name => 'User'
    belongs_to :player3, :class_name => 'User'
    belongs_to :player4, :class_name => 'User'

    has_many :matches
end
