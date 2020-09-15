# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all

def year_of_birth 
    rand(2000...2020)
end 

def get_age
    return Date.today.year - year_of_birth
end

def random_boolean
    rand() > 0.5
end

def get_species 
    ["Dog", "Cat", "Bird"].sample
end 

#"Good with children" or "Prefers a home without children"


20.times {Pet.create(name:"#{Faker::Name.name}",
                    species: get_species,
                    year_of_birth: year_of_birth,
                    good_with_kids?: random_boolean)} 