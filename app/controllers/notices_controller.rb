class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def show
    @notice = Notice.find(params[:id])
    @facility = Facility.find_by_id(@notice.facility_id)
    @client = Client.find_by_id(@facility.client_id)
  end

  def new
    @clients = current_user.clients.find(:all, :order => "created_at DESC")
    @facilities = []
    @clients.each do |client|
      @facilities += client.facilities.find(:all, :order => "name ASC")
    end
    
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(params[:notice])
    @notice.user_id = current_user.id
    if @notice.save
      redirect_to @notice, :notice => "Successfully created this #{@notice.notice_type}"
    else
      render :new
    end
  end

  def edit
    @notice = Notice.find(params[:id])
    @facilities = Facility.all
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update_attributes(params[:notice])
      redirect_to @notice, :notice  => "Successfully updated notice."
    else
      render :edit
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to notices_url, :notice => "Successfully destroyed notice."
  end
end
