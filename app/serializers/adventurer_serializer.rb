class AdventurerSerializer < ActiveModel::Serializer
  attributes :id, :name, :health, :armor, :attack, :level
end
