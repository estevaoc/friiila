class BillsController < ApplicationController
  before_action :set_place, only: [:new, :create, :show, :update, :update_owner, :my_open_bills]
  before_action :set_bill, only: [:update, :update_owner, :show]

  def index #para o cliente ver todas suas bills passadas
    @bills = current_user.bills
  end

  def new
    @open_bill = Bill.find_by(paid: false, user_id: current_user.id)
    if @open_bill
      redirect_to place_bill_path(@open_bill.place, @open_bill)
    else
      @bill = Bill.new
      create
    end
  end

  def create
    @bill = Bill.new(paid: false)
    @bill.user = current_user
    @bill.place = @place
    @bill.save
    redirect_to place_bill_path(@place, @bill)
  end

  def edit
  end

  def update
    @bill.paid = true
    @bill.save
    redirect_to places_path
  end

  def update_owner
    @bill = @place.bills.find(params[:id])
    @bill.paid = true
    @bill.save
    redirect_to my_open_bills_place_bills_path(@place)
  end

  def show
    @orders = @bill.orders
  end

  def my_open_bills #para a budega ver todas suas bills abertas
    if params[:query].present?
      @bills = Bill.search_by_name(params[:query]).where(paid: false, place_id: @place)
    else
      @bills = Bill.where(paid: false, place_id: @place)
    end
  end

  def destroy
    @bill.destroy
  end

  private

  def bill_params
    params.require(:bill).permit(:paid)
  end

  def set_bill
    @bill = @place.bills.find(params[:id])
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
