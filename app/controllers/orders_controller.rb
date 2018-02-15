class OrdersController < ApplicationController
  before_action :set_bill, only: [:index, :new, :create, :create_multiple]

  def index #mostra as orders dentro de uma bill especifica
    @orders = Order.where(bill_id: @bill)
  end

  def new
    @order = Order.new
    @items = Item.all
  end

  def create
    @order = Order.new(order_params)
    @order.bill = @bill
    @order.save
    redirect_to my_open_bills_place_bills_path(@order.bill.place)
  end

  def show #provavelmente nao sera utilizada
  end

  def update #seria bom implementar um update para item e amount
  end

  def edit
  end

  def destroy
    @order.destroy
  end

  def create_multiple
    params[:items].each do |order_params|
      @order = Order.new(order_params.permit!)
      @order.bill = @bill
      if order_params["amount"].present?
        @order.save
      end
    end
    redirect_to my_open_bills_place_bills_path(@bill.place)
  end

  private

  def order_params
    params.require(:order).permit(:amount, :item_id)
  end

  def set_bill
    @bill = Bill.find(params[:bill_id])
  end
end
