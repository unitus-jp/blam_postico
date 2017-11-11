class CompanysController < ApplicationController
  def new
    @company = Company.new
  end
end
