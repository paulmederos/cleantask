class AreasController < ApplicationController
  class FacilitiesController < ApplicationController
    def index
      @areas = Area.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @areas }
      end
    end

    def show
      @area = Area.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @area }
      end
    end

    def new
      @area = Area.new
      @clients = Client.all
      @facilities = Facility.all

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @area }
      end
    end

    def edit
      @area = Area.find(params[:id])
    end

    def create

      @area = Area.new(params[:area])

      respond_to do |format|
        if @area.save
          format.html { redirect_to @area, notice: 'Area was successfully created.' }
          format.json { render json: @area, status: :created, location: @area }
        else
          format.html { render action: "new" }
          format.json { render json: @area.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @area = Area.find(params[:id])

      respond_to do |format|
        if @area.update_attributes(params[:area])
          format.html { redirect_to @area, notice: 'Area was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @area.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @area = Area.find(params[:id])
      @area.destroy

      respond_to do |format|
        format.html { redirect_to area_url }
        format.json { head :ok }
      end
    end
  end
end
