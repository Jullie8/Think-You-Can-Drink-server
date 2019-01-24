class UserList < ApplicationRecord
    has_many :drinks
    has_many :alcohols, through: :drinks


def bac
    all_drink_sd = self.alcohols.all.map do |alcohol|
        alcohol.sd
    end.reduce(:+)
    
    all_drinks_drunken = self.drinks.map do |drink|
        drink.drink_amount
    end.reduce(:+)
    
    bwc = self.sex == "male" ? bwc = 0.58 : bwc = 0.49
    return ((0.806 * (all_drink_sd * all_drinks_drunken) * 1.2) / (bwc * self.weight) * 10)
    # byebug
end

def message 
    #if self.bac is between this range 
    #result = something 
    #else if something else then something else 
    #
end 

end
