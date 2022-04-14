class FinancialController < ApplicationController
  before_action :set_financial, only: [:edit,:update]

  def entrada
    @financials = Financial.where(type_financial: 0)
  end

  def saida
    @financials = Financial.where(type_financial: 1)
  end

  def new
    @financial = Financial.new()
  end

  def create
    financeiro = Financial.new(set_params)
    financeiro.save
    redirect_to "/financial/entrada"
  end

  def edit; end

  def update
    @financial.update(set_params)
    redirect_to "/financial/entrada"
  end

  def set_financial
    @financial = Financial.find(params[:id])
  end

  def set_params
    params.require(:financial).permit(:type_financial,:name,:value)
  end
end
