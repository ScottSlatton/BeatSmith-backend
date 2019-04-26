class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :level, :experience, :friend_code, :highest_combo, :highest_score
end
