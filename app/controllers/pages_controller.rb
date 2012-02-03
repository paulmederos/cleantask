class PagesController < ApplicationController
  
  def home
    @clients = Client.find(:all, :order => "created_at DESC")
    @facilities = Facility.find(:all, :order => "name ASC")
    @notices = Notice.find_all_by_status("Open")
  end
end
