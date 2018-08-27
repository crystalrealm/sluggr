require "./spec_helper"

describe Sluggr do
  it "works with a simple string" do
    Sluggr.slugify("Hello there.").should eq "hello-there"
  end

  it "works with a compilated string with special characters" do
    Sluggr.slugify("Hello, #¶*:?[], my name is mark.").should eq "hello-my-name-is-mark"
  end

  it "works with a specified separator" do
    options = {
      "separator" => "/",
    }
    Sluggr.slugify("Hello there.", options).should eq "hello/there"
  end
end
