require File.dirname(__FILE__) + '/../spec_helper'

describe Inspection do
  it "should be valid" do
    Inspection.new.should be_valid
  end
end
