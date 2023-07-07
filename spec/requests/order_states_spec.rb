require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/order_states", type: :request do

  # This should return the minimal set of attributes required to create a valid
  # OrderState. As you add validations to OrderState, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      OrderState.create! valid_attributes
      get order_states_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      order_state = OrderState.create! valid_attributes
      get order_state_url(order_state)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_order_state_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      order_state = OrderState.create! valid_attributes
      get edit_order_state_url(order_state)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new OrderState" do
        expect {
          post order_states_url, params: { order_state: valid_attributes }
        }.to change(OrderState, :count).by(1)
      end

      it "redirects to the created order_state" do
        post order_states_url, params: { order_state: valid_attributes }
        expect(response).to redirect_to(order_state_url(OrderState.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new OrderState" do
        expect {
          post order_states_url, params: { order_state: invalid_attributes }
        }.to change(OrderState, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post order_states_url, params: { order_state: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested order_state" do
        order_state = OrderState.create! valid_attributes
        patch order_state_url(order_state), params: { order_state: new_attributes }
        order_state.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the order_state" do
        order_state = OrderState.create! valid_attributes
        patch order_state_url(order_state), params: { order_state: new_attributes }
        order_state.reload
        expect(response).to redirect_to(order_state_url(order_state))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        order_state = OrderState.create! valid_attributes
        patch order_state_url(order_state), params: { order_state: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested order_state" do
      order_state = OrderState.create! valid_attributes
      expect {
        delete order_state_url(order_state)
      }.to change(OrderState, :count).by(-1)
    end

    it "redirects to the order_states list" do
      order_state = OrderState.create! valid_attributes
      delete order_state_url(order_state)
      expect(response).to redirect_to(order_states_url)
    end
  end
end