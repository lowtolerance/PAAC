class ServicesController < ApplicationController
  
  def index
    @services = Service.order("services.position ASC")
  end
  
  def list
    @services = Service.order("services.position ASC")
  end
  
  def show
    @service = Service.find_by_permalink(params[:permalink])
  end
  
  def new
    @service = Service.new
  end
  
  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end
  
  def edit
    @service = Service.find_by_permalink(params[:permalink])
  end
  
  def update
    @service = Service.find_by_permalink(params[:permalink])
    if @service.update_attributes(params[:service])
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end
  
  def delete
    @service = Service.find_by_permalink(params[:permalink])
  end
  
  def destroy
    Service.find_by_permalink(params[:permalink]).destroy
    redirect_to(:action => 'list')
  end
  
end