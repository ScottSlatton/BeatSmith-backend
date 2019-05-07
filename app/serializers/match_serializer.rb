class MatchSerializer < ActiveModel::Serializer
  attributes :id, :user, :score, :team
end