class CraftSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :damage, :armor, :level, :type
end
