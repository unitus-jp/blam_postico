class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    Company.create(name: params[:name])
  end

  private
  def create_params
    params.require(:review).permit(:text)
  end
end
