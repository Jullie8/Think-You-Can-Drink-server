class AlcoholSerializer < ActiveModel::Serializer
  attributes :id, :name, :sd, :category
   has_many :drinks
   has_many :user_lists, through: :drinks
end
