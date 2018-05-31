class VitaminsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /vitamins
  def index
    @vitamins = Vitamin.all
  end

  # GET /vitamins/1
  def show
    @vitamin = Vitamin.find(params[:id])
  end

  # GET /vitamins/new
  def new
    @vitamin = current_user.vitamins.new
  end

  # GET /vitamins/1/edit
  def edit
    @vitamin = current_user.vitamins.find(params[:id])
  end

  # POST /vitamins
  def create
    @vitamin = current_user.vitamins.new(vitamin_params)
    if @vitamin.save
      redirect_to @vitamin, notice: 'Vitamin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vitamins/1
  def update
    @vitamin = current_user.vitamins.find(params[:id])
    if @vitamin.update(vitamin_params)
      redirect_to @vitamin, notice: 'Vitamin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vitamins/1
  def destroy
    @vitamin = current_user.vitamins.find(params[:id])
    @vitamin.destroy
      redirect_to vitamins_url, notice: 'Vitamin was successfully destroyed.'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def vitamin_params
      params.require(:vitamin).permit(:content)
    end
end
