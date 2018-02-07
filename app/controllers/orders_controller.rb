class OrdersController < ApplicationController
  before_action :set_bill, only: [:index, :new, :create]
  before_action :set_place, only: [:create]
  def index #mostra as orders dentro de uma bill especifica, falta (.where(@bill.paid: false))
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.bill = @bill
    @order.save
    redirect_to place_bill_orders_path(@place, @bill)
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

  private

  def order_params
    params.require(:order).permit(:amount, :item)
  end

  def set_bill
    @bill = Bill.find(params[:bill_id])
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
