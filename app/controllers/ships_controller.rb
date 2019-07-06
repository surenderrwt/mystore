class ShipsController < ApplicationController
   layout 'front'
  before_action :set_ship, only: [:show, :edit, :update, :destroy]

  # GET /ships
  # GET /ships.json
  def index
    @ships = Ship.all
  end

  # GET /ships/1
  # GET /ships/1.json
  def show
  end

  # GET /ships/new
  def new
    @ship = Ship.new
    @states = []
    @countries = Country.all.order(:name)    
  end

  # GET /ships/1/edit
  def edit
    @states = []
    @countries = Country.all.order(:name)
  end


  def getstates
      @states = Country.find(params[:country_id]).states
      respond_to do |format|
        format.json {
          render json: {states: @states}
        }
    end
  end

  # POST /ships
  # POST /ships.json
  def create
    @ship = Ship.new(ship_params)
    @states = []
    @countries = Country.all.order(:name)
    put @ship 
    respond_to do |format|
      if @ship.save
        format.html { redirect_to @ship, notice: 'Ship was successfully created.' }
        format.json { render :show, status: :created, location: @ship }
      else
        format.html { render :new }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ships/1
  # PATCH/PUT /ships/1.json
  def update
    @states = []
    @countries = Country.all.order(:name)
    respond_to do |format|
      if @ship.update(ship_params)
        format.html { redirect_to @ship, notice: 'Ship was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship }
      else
        format.html { render :edit }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ships/1
  # DELETE /ships/1.json
  def destroy
    @ship.destroy
    respond_to do |format|
      format.html { redirect_to ships_url, notice: 'Ship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship
      @ship = Ship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_params
      params.require(:ship).permit(:fname, :lname, :add1, :add2, :phone, :country_id, :state_id)
    end
end
