class UserListSerializer < ActiveModel::Serializer
  attributes :id, :sex, :weight
  has_many :drinks
  has_many :alcohols, through: :drinks
end
