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
    
    body_weight_grams = self.weight * 454
    sex_constant= self.sex == "male" ? sex_constant = 0.68 : sex_constant = 0.55
    # weight_lbs_to_kg = self.weight / 2.205
    # bwc = self.sex == "male" ? bwc = 0.58 : bwc = 0.49
    # metabolism = self.sex == "male" ? metabolism = 0.015 : metabolism = 0.017 
    # result = 0.806 * (all_drink_sd * all_drinks_drunken) * 1.2 / (bwc * weight_lbs_to_kg) - (metabolism * 1 )
    # result.round(3);

    #new calculation
    bac_percentage =  ((all_drink_sd * 10)/ (body_weight_grams * sex_constant)).round(5) * 100 
    acounting_for_elapsed_time = 0.015 * 1 # 1 is the elapsed time we can add functionality for diff hrs
    result_approximate_bac_percent = bac_percentage - acounting_for_elapsed_time
    # byebug
end

def message 
    #if self.bac is between this range 
    # description;
    title = ''
    if self.bac.between?(0.250,0.399) || self.bac > 0.40
        title = 'Please Go To Hospital.'
        description = 'DANGER  ZONE - at RISK for alcohol poisoning, consciousness is lost - STOP - DO NOT THINK ABOUT DRINKING ALL THAT'
    elsif self.bac.between?(0.020, 0.039)
        title = "Chillin'"
        description = "You may think you are slightly happier, but are you?, there is a loss of shyness and state of relaxation" 
    elsif self.bac.between?(0.040, 0.059)
        title = "Straight Chillin'"
        description = "You may think you are wavy, chill natured and you may feel warm. A Level up on the happiness. judgment and memory has decreased"
    elsif self.bac.between?(0.06, 0.099)
        title = "Gettin' Kinda Tipsy"
        description = 'Proceed with CAUTION: your speech, balance, reaction time, and hearing are affected. Toughts and feelings of extreme happiness. Think you self control ... think again your judgment and memory will be  impaired.'
    elsif self.bac.between?(0.100, 0.129)
        title = "Preeeetty Tipsy"
        description = "WATCH OUT the law prohibits you from driving, impairment exists: for motor coordination, your judgment is NOT WELL!. So you think you can speak think again you will speak unclearly; balance, peripheral vision, reaction time, and hearing will be impaired. Happiness is at its peak"
    elsif self.bac.between?(0.130, 0.159)
        title = "Drunk/Schwifty"
        description = 'WARNING with that amount of drinks you will experience blurry vision and balance will be off. Dysphoria begins you will not feel well my friend :('
    elsif self.bac.between?(0.160, 0.199)
        title = "Go Home, You're Drunk."
        description = 'ALERT You gonna look slooppy with many drinks , nausea may begins. Better think again.'
    elsif self.bac.between(0.200, 0.249)
        title = "Beyond Wasted."
        description = 'You really want that many DRINKS! Think about it you gonna need assistance walking, mentally confused, vomiting and perhaps blackout. '
    end
end 

end


#effects partially gathered from https://mcwell.nd.edu/your-well-being/physical-well-being/alcohol/blood-alcohol-concentration/