class GearsController < ApplicationController

  def index
    @gears = Gear.all
  end

  def show 
    @gear = Gear.find(params[:id])
  end
  
  def new
    @gear = Gear.new
  end
  
  def create
    @gear = Gear.new(gear_params)
    @gear.user = current_user
    @gear.save

    if @gear.save
      redirect_to @gear, notice: "Gear was created"
    else
      render :new
    end
  end

  def destroy
    @gears = Gear.all
    @gear = Gear.find(params[:id])
    
    @gear.destroy

    redirect_to gears_path

  end
  
  private

  def gear_params
    params.require(:gear).permit(:description, :price, :category, :name)
  end
end

# def index
#   @cocktails = Cocktail.all
# end 

# def show
#   @cocktail = Cocktail.find(params[:id])
#   # @dose = Dose.find(params[:dose_id])
#   @ingredients = Ingredient.all
# end 

# def new
#   @cocktail = Cocktail.new 
# end

# def create
#   cocktail = Cocktail.new(cocktail_params)
#   cocktail.save

#   redirect_to cocktails_path
# end

# private

# def cocktail_params
#   params.require(:cocktail).permit(:name)
# end 
