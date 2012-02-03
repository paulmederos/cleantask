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
    @notice = Notice.new
    @facilities = Facility.all
  end

  def create
    @notice = Notice.new(params[:notice])
    if @notice.save
      redirect_to @notice, :notice => "Successfully created this #{@notice.notice_type}"
    else
      render :new
    end
  end

  def edit
    @notice = Notice.find(params[:id])
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
