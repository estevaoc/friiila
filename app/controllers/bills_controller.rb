class BillsController < ApplicationController
  before_action :set_place, only: [:new, :create, :show, :update, :my_open_bills]
  before_action :set_bill, only: [:update, :show]

  def index #para o cliente ver todas suas bills passadas
    @bills = current_user.bills
  end

  def new
    @bill = Bill.new
    create
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
    @bill.update(bill_params)
    redirect_to places_path(@places)
  end

  def show
    @orders = @bill.orders
  end

  def my_open_bills #para a budega ver todas suas bills abertas (ainda nao implementado .where(@bill.paid: false))
    @bills = Bill.all
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
