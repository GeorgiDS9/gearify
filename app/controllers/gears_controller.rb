class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @gears = Gear.all

    if params[:category].present?
      @gears = Gear.where(category: params[:category])
    end
  end

  def show
    @gear = Gear.find(params[:id])
    @user = current_user
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

  def edit
    @gear = Gear.find(params[:id])
  end

  def update 
    @gear = Gear.find(params[:id])
    @gear.update(gear_params)

    redirect_to @gear, notice: "Your gear has been edited"
  end

  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
    redirect_to gears_path, notice: "Gear was deleted"
  end

  private

  def gear_params
    params.require(:gear).permit(:description, :price, :category, :name)
  end
end
