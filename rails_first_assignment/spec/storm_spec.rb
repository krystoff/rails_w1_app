#require_relative "../app/models/storm.rb"

describe Storm do
  subject {Storm.new(:day => "anyday", :snowfall => "1")}
  
  it "should respond to 'day' and 'snowfall'" do
    subject.day.should be_true
    subject.snowfall.should be_true
  end
end
