class CompaniesController < ApplicationController
  #def new
  #  @company = Company.new
  #end

  def create
    Company.create(name: params[:name])
    redirect_to controller:'companies', action:'shinonome'
  end

  def top
  end

  def shinonome
  end


end
