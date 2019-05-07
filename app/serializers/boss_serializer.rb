class BossSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :health, :armor, :damage, :experience, :defeated

end
