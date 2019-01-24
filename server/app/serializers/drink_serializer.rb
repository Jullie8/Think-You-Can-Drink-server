class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :drink_amount, :alcohol_id, :user_list_id
  belongs_to :alcohol
  belongs_to :user_list
end
