class PetController < ApplicationController

    def index
      @pets = Pet.all
      # print_variable
      render(:index)
    end
  
    def show
      id = params[:id]
      @pet = Pet.find(id)
    end
  
end