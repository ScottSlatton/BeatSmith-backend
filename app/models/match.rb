class Match < ApplicationRecord
    belongs_to :user
    has_many :bosses
end
