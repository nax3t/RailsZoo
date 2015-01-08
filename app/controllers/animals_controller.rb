class AnimalsController < ApplicationController
  def index
  	@animals = Animal.all
  end

  def new
  end

  def create
  	@animal = Animal.new(animal_params)
  	@animal.save

  	redirect_to @animal
  end

  def show
  	@animal = Animal.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
	end

private
	def animal_params
		params.require(:animal).permit(:name, :species, :img)
	end

end
