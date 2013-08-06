require 'spec_helper'

describe TweetsController do
  render_views

  before(:each) do
    quentin = User.create({name: "Quentin", lastname: "Brossard", handle: "qbrossard"})
    Tweet.create({content: "Test tweet 1", user_id: quentin.id})
    Tweet.create({content: "Test tweet 2", user_id: quentin.id})
  end

  it "should list all tweets" do
    get :index
    response.should include("Test tweet 1")
    response.should include("Test tweet 2")
  end

  it "should fail" do
    get :show, :id => 1
    response.should include("Test tweet 1")
  end
end
