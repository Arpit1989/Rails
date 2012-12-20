require 'spec_helper'

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

describe HerokusController do

  # This should return the minimal set of attributes required to create a valid
  # Heroku. As you add validations to Heroku, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "heroku_url" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HerokusController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all herokus as @herokus" do
      heroku = Heroku.create! valid_attributes
      get :index, {}, valid_session
      assigns(:herokus).should eq([heroku])
    end
  end

  describe "GET show" do
    it "assigns the requested heroku as @heroku" do
      heroku = Heroku.create! valid_attributes
      get :show, {:id => heroku.to_param}, valid_session
      assigns(:heroku).should eq(heroku)
    end
  end

  describe "GET new" do
    it "assigns a new heroku as @heroku" do
      get :new, {}, valid_session
      assigns(:heroku).should be_a_new(Heroku)
    end
  end

  describe "GET edit" do
    it "assigns the requested heroku as @heroku" do
      heroku = Heroku.create! valid_attributes
      get :edit, {:id => heroku.to_param}, valid_session
      assigns(:heroku).should eq(heroku)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Heroku" do
        expect {
          post :create, {:heroku => valid_attributes}, valid_session
        }.to change(Heroku, :count).by(1)
      end

      it "assigns a newly created heroku as @heroku" do
        post :create, {:heroku => valid_attributes}, valid_session
        assigns(:heroku).should be_a(Heroku)
        assigns(:heroku).should be_persisted
      end

      it "redirects to the created heroku" do
        post :create, {:heroku => valid_attributes}, valid_session
        response.should redirect_to(Heroku.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved heroku as @heroku" do
        # Trigger the behavior that occurs when invalid params are submitted
        Heroku.any_instance.stub(:save).and_return(false)
        post :create, {:heroku => { "heroku_url" => "invalid value" }}, valid_session
        assigns(:heroku).should be_a_new(Heroku)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Heroku.any_instance.stub(:save).and_return(false)
        post :create, {:heroku => { "heroku_url" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested heroku" do
        heroku = Heroku.create! valid_attributes
        # Assuming there are no other herokus in the database, this
        # specifies that the Heroku created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Heroku.any_instance.should_receive(:update_attributes).with({ "heroku_url" => "MyString" })
        put :update, {:id => heroku.to_param, :heroku => { "heroku_url" => "MyString" }}, valid_session
      end

      it "assigns the requested heroku as @heroku" do
        heroku = Heroku.create! valid_attributes
        put :update, {:id => heroku.to_param, :heroku => valid_attributes}, valid_session
        assigns(:heroku).should eq(heroku)
      end

      it "redirects to the heroku" do
        heroku = Heroku.create! valid_attributes
        put :update, {:id => heroku.to_param, :heroku => valid_attributes}, valid_session
        response.should redirect_to(heroku)
      end
    end

    describe "with invalid params" do
      it "assigns the heroku as @heroku" do
        heroku = Heroku.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Heroku.any_instance.stub(:save).and_return(false)
        put :update, {:id => heroku.to_param, :heroku => { "heroku_url" => "invalid value" }}, valid_session
        assigns(:heroku).should eq(heroku)
      end

      it "re-renders the 'edit' template" do
        heroku = Heroku.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Heroku.any_instance.stub(:save).and_return(false)
        put :update, {:id => heroku.to_param, :heroku => { "heroku_url" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested heroku" do
      heroku = Heroku.create! valid_attributes
      expect {
        delete :destroy, {:id => heroku.to_param}, valid_session
      }.to change(Heroku, :count).by(-1)
    end

    it "redirects to the herokus list" do
      heroku = Heroku.create! valid_attributes
      delete :destroy, {:id => heroku.to_param}, valid_session
      response.should redirect_to(herokus_url)
    end
  end

end