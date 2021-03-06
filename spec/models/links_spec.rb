require 'spec_helper'

describe Link do
  it "requires a URL" do
    @link = Fabricate(:node_link)
    @link.should be_valid
    @link.url = nil
    @link.should_not be_valid
  end

  it "accepts valid URLs" do
    validURLs = [
          "http://www.google.com",
          "https://hello"
    ]
    validURLs.each do |url|
      @link = Fabricate(:node_link)
      @link.url = url
      @link.should be_valid
    end
  end
  it "rejects invalid URLs" do
    invalidURLs = [
          "google.com",
          "hello",
          "www.google.com"
    ]
    invalidURLs.each do |url|
      @link = Fabricate(:node_link)
      @link.url = url
      @link.should_not be_valid
    end
  end
end
