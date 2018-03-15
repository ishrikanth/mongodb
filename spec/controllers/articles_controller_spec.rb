require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe ArticlesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Article. As you add validations to Article, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
      {title: "title",content: "content"}
  }

  let(:invalid_attributes) {
     {title: "title1",content: "content1"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ArticlesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      article = Article.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      article = Article.create! valid_attributes
      get :show, params: {id: article.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      article = Article.create! valid_attributes
      get :edit, params: {id: article.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Article" do
        expect {
          post :create, params: {article: valid_attributes}, session: valid_session
        }.to change(Article, :count).by(1)
      end

      it "redirects to the created article" do
        post :create, params: {article: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Article.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {article: invalid_attributes}, session: valid_session
        expect(response).to_not be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {title: "title",content: "content"}
      }

      it "updates the requested article" do
        article = Article.create! valid_attributes
        put :update, params: {id: article.to_param, article: new_attributes}, session: valid_session
        article.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the article" do
        article = Article.create! valid_attributes
        put :update, params: {id: article.to_param, article: valid_attributes}, session: valid_session
        expect(response).to redirect_to(article)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        article = Article.create! valid_attributes
        put :update, params: {id: article.to_param, article: invalid_attributes}, session: valid_session
        expect(response).to_not be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested article" do
      article = Article.create! valid_attributes
      expect {
        delete :destroy, params: {id: article.to_param}, session: valid_session
      }.to change(Article, :count).by(-1)
    end

    it "redirects to the articles list" do
      article = Article.create! valid_attributes
      delete :destroy, params: {id: article.to_param}, session: valid_session
      expect(response).to redirect_to(articles_url)
    end
  end

end
