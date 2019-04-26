class Match < ApplicationRecord
    belongs_to :team
    has_many :bosses
end
