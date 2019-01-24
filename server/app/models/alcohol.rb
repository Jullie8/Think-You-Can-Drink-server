class Alcohol < ApplicationRecord
    has_many :drinks
    has_many :user_lists, through: :drinks
end
