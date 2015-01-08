class AnimalsController < ApplicationController
  def index
  	@animals = Animal.all
  end

  def new
  	@animal = Animal.new
  end

  def create
  	@animal = Animal.new(animal_params)
  	if @animal.save
  		flash[:success] = "You created a new #{@animal.species} named #{@animal.name}!"
  		redirect_to @animal
  	else
  		render 'new'
  	end
  end

  def show
  	@animal = Animal.find(params[:id])
  end

  def edit
  	@animal = Animal.find(params[:id])
  end

  def update
  	@animal = Animal.find(params[:id])
 
  	if @animal.update(animal_params)
    	redirect_to @animal
  	else
    	render 'edit'
  	end
  end

  def destroy
  @animal = Animal.find(params[:id])
  @animal.destroy
 	flash[:danger] = "You deleted #{@animal.name}!"
  redirect_to animals_path
	end

private
	def animal_params
		params.require(:animal).permit(:name, :species, :img, :bio)
	end

end
