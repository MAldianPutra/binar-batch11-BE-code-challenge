class TransactionsController < ApplicationController
  before_action :current_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all  
  end

  def show

  end

  def new
    @transaction = Transaction.new
  end

  def create
    transaction = Transaction.create(transaction_params)
    redirect_to transactions_path(transaction)
  end

  def edit

  end

  def update
    @transaction.update(transaction_params)
    redirect_to transactions_path(@transaction)
  end
  
  def destroy
    @transaction.destroy
    redirect_to transactions_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:member_id, :item_id, :price, :quantity)
  end

  def current_transaction
    @transaction = Transaction.find(params[:id])
  end
end
