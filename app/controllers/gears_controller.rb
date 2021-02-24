class GearsController < ApplicationController

  def index
    @gears = Gear.all

    if params[:category].present?
      @gears = Gear.where(category: params[:category])
    end
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
