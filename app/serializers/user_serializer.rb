class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :click_strength, :level, :experience, :friend_code, :highest_combo, :highest_score, :ore, :adventurer
end
