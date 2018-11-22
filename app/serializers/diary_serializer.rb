class DiarySerializer < ActiveModel::Serializer
  attributes :id, :date, :note
end
