class OrdersController < ApplicationController
  layout "front", only:[:new, :show, :edit]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @states = []
    @countries = Country.all.order(:name) 
    @order = Order.new
    @user =User.find_by(id: session[:user_id])
    
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    #user =User.find_by(session[:user_id])
   
    @states = []
    @countries = Country.all.order(:name) 
    @user =User.find_by(id: session[:user_id])
    @uorder = @user.orders.new
    ship = Ship.new(fname: params[:order][:fname], lname: params[:order][:lname], add1: params[:order][:add1], add2: params[:order][:add2], phone: params[:order][:phone], country_id: params[:order][:country_id], state_id: params[:order][:state_id])
    @order = @uorder.ship = ship
        
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id, :total, :payment, :order_status, :delivery_date, :ship_attribute => [:fname, :lname, :add1, :add2, :phone, :country_id, :state_id] )
    end

    
end
