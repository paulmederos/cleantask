class ClientsController < ApplicationController
  def index
    @clients = Client.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients }
    end
  end

  def show
    @client = Client.find(params[:id])
    @facilities = Facility.find_all_by_client_id(params[:id])
    @notices = Notice.find_all_by_facility_id_and_status(params[:id], "Open")
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client }
    end
  end

  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client }
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render json: @client, status: :created, location: @client }
      else
        format.html { render action: "new" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :ok }
    end
  end
end
