class DashboardController < ApplicationController
  before_action :set_employer, only: [:edit,:update,:destroy]
  def index
    @financialIn = Financial.where(type_financial: 0)
    @financialOut = Financial.where(type_financial: 1)
  end
  
  def create
    usuario = Employer.new(set_params)
    usuario.save
    redirect_to "/dashboard/lorenzo"
  end

  def new
    @user = Employer.new()
  end
  
  def edit;end
  
  def update
    @user.update(set_params)
    redirect_to "/dashboard/lorenzo"
  end
  
  def destroy
    @user.destroy
    redirect_to "/dashboard/lorenzo"
  end

  def lorenzo
    @users = Employer.all.order("id ASC")
  end

  def set_employer
    @user = Employer.find(params[:id])
  end

  def set_params
    params.require(:employer).permit(:name,:age)
  end

end
