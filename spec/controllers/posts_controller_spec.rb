require 'spec_helper'

describe PostsController do

  before(:each) do
    @post = Factory.create(:post)
  end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
      assigns(:posts).first.should == @post
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', :id => @post.id
      response.should be_success
      assigns(:post).should == @post
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      post 'create', :post =>{'title' => 'title', 'body'=> 'body', "published"=>"0"}
      response.should be_redirect
    end
  end

  describe "DELETE 'destroy'" do
    it "returns http success" do
      pending 'Not Yet Implemented'
    end
  end

  context "edit an post" do
    describe "PUT 'update'" do
      it "returns http success" do
        @post.title = "Updated"
        put 'update', :id => @post.id, :post => @post.as_json
        response.should be_redirect
      end
    end

    describe "GET 'edit'" do
      it "returns http success" do
        get 'edit', :id => @post.id
        response.should be_success
      end
    end

  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

end
