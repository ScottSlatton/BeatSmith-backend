class User < ApplicationRecord
    has_many :matches
    has_many :friends, :class_name => 'Friend', :foreign_key => 'friender_id'
    has_many :friends, :class_name => 'Friend', :foreign_key => 'friended_id'

end
