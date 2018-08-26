require "./spec_helper"
require "../src/sluggr"

describe Sluggr do
  it "works with a simple string" do
    Sluggr::Sluggr.slugify("Hello there.").should eq "hello-there"
  end

  it "works with a compilated string with special characters" do
    Sluggr::Sluggr.slugify("Hello, #¶*:?[], my name is mark.").should eq "hello-my-name-is-mark"
  end

  it "works with a specified delimiter" do
    options = {
      "delimiter" => "/",
    }
    Sluggr::Sluggr.slugify("Hello there.", options).should eq "hello/there"
  end
end
