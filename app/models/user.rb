class User < ApplicationRecord
    has_many :recruits
    has_many :adventurers, through: :recruits
    # has_many :recruited_adventurers, :through => :recruits, source: :adventurer
    #call user.recruited_adventurers to see recruited adventurers
    validates :username, uniqueness: { case_sensitive: false }
    has_secure_password
end
