class MonsterSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :health, :armor, :damage, :experience, :defeated

end
