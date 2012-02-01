class InspectionsController < ApplicationController
  def index
    @inspections = Inspection.all
  end

  def show
    @inspection = Inspection.find(params[:id])
  end

  def new
    @facilities = Facility.all
    @inspection = Inspection.new
  end

  def create
    @inspection = Inspection.new(params[:inspection])
    if @inspection.save
      redirect_to @inspection, :notice => "Successfully submitted the inspection."
    else
      render :new
    end
  end

  def edit
    @inspection = Inspection.find(params[:id])
  end

  def update
    @inspection = Inspection.find(params[:id])
    if @inspection.update_attributes(params[:inspection])
      redirect_to @inspection, :notice  => "Successfully updated inspection."
    else
      render :edit
    end
  end

  def destroy
    @inspection = Inspection.find(params[:id])
    @facility = @inspection.facility
    @inspection.destroy
    redirect_to @facility, :notice => "Successfully destroyed inspection."
  end
end
