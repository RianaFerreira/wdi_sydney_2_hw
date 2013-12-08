class HomeController < ApplicationController

  def index

  end

  def all
    @countries = Country.select([:id, :abbreviation, :name, :north_america]);
     respond_to do |format|
      format.json { render :json => @countries }
    end
  end

  def countries
    #@countries = Country.select([:id, :abbreviation, :name, :north_america]);
    @countries = Country.find(:all, :offset => params[:offset], :limit => params[:step]);
    #countries = Country.order('ASC name').offset(params[:offset]).limit(params[:step])
     respond_to do |format|
      format.json { render :json => @countries }
    end
  end

end
