class DiarySerializer < ActiveModel::Serializer
  attributes :id, :date, :note
  belongs_to :user
end
