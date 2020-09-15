
class Pet < ApplicationRecord

    def display_age 
        year_of_birth - Date.today.year
    end 

    # def display_children 
    #     return self. ? "yes" : "no"
    # end 
end

