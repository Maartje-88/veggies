class VeggiesController < ApplicationController

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
  @veggy =  Veggy.new(veggy_params)
    if @veggy.save
      redirect_to veggies_path
    else
      render :new
    end
end

private

def veggy_params
  params.require(:veggy).permit(:name)
end

end
