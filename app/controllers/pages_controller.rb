class PagesController < ApplicationController
  
  def home
    if current_user
      @clients = current_user.clients.find(:all, :order => "created_at DESC")
      @facilities = []
      @clients.each do |client|
        @facilities += client.facilities.find(:all, :order => "name ASC")
      end
    
      @open_notices =[]
      @closed_notices = []
    
      @facilities.each do |facility|
        @open_notices += facility.notices.find_all_by_status("Open", :order => "priority ASC, created_at DESC")
        @closed_notices += facility.notices.find_all_by_status("Closed", :order => "created_at DESC")
      end
    
      @open_notices.sort! {|a,b| b.created_at <=> a.created_at }
      @closed_notices.sort! {|a,b| b.created_at <=> a.created_at }
    end
  end
end
