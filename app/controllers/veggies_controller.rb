class VeggiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @veggies = Veggy.all
  end

  def show
    @veggy = Veggy.find(params[:id])
  end

  def new
    @veggy = Veggy.new
  end

  def create
    @veggy = current_user.veggies.new(veggy_params)
    if @veggy.save
      redirect_to veggies_path, notice: 'Veggy was successfully created.'
    else
      render :new
    end
  end

  def edit
      @veggy = Veggy.find(params[:id])
    end

  def update
    @veggy = Veggy.find(params[:id])
    if @veggy.update(veggy_params)
      redirect_to veggies_path
    else
      render :edit
    end
  end

  def destroy
    @veggy = Veggy.find(params[:id])
    @veggy.destroy
    redirect_to veggies_url
  end

  private

  def veggy_params
    params.require(:veggy).permit(:name, :image)
  end

end
