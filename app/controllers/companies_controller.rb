class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    Company.create(name: params[:name])
  end

  def list
    @companies = Company.all
  end

end
