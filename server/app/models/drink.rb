class Drink < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user_list
end
