class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :level, :experience, :friend_code
end
