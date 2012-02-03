require File.dirname(__FILE__) + '/../spec_helper'

describe Notice do
  it "should be valid" do
    Notice.new.should be_valid
  end
end
