class DinnerToursController < ApplicationController
  before_filter :authenticate_user! 
  before_filter :ensure_admin, :only => [:edit, :destroy]

  before_action :set_dinner_tour, only: [:show, :edit, :update, :destroy]

  # GET /dinner_tours
  # GET /dinner_tours.json
  def index
    @dinner_tours = DinnerTour.all
  end
  
  def ensure_admin
    unless current_user && current_user.admin?
    render :text => "Access Error Message", :status => :unauthorized
    end
  end

  # GET /dinner_tours/1
  # GET /dinner_tours/1.json
  def show
  end

  # GET /dinner_tours/new
  def new
    @dinner_tour = DinnerTour.new
  end

  # GET /dinner_tours/1/edit
  def edit
  end

  # POST /dinner_tours
  # POST /dinner_tours.json
  def create
    @dinner_tour = DinnerTour.new(dinner_tour_params)

    respond_to do |format|
      if @dinner_tour.save
        format.html { redirect_to @dinner_tour, notice: 'Dinner tour was successfully created.' }
        format.json { render :show, status: :created, location: @dinner_tour }
      else
        format.html { render :new }
        format.json { render json: @dinner_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinner_tours/1
  # PATCH/PUT /dinner_tours/1.json
  def update
    respond_to do |format|
      if @dinner_tour.update(dinner_tour_params)
        format.html { redirect_to @dinner_tour, notice: 'Dinner tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinner_tour }
      else
        format.html { render :edit }
        format.json { render json: @dinner_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinner_tours/1
  # DELETE /dinner_tours/1.json
  def destroy
    @dinner_tour.destroy
    respond_to do |format|
      format.html { redirect_to dinner_tours_url, notice: 'Dinner tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinner_tour
      @dinner_tour = DinnerTour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dinner_tour_params
      params.require(:dinner_tour).permit(:title, :notes)
    end
end
