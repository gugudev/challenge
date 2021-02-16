 require 'rails_helper'

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

RSpec.describe "/api/v1/images", type: :request do

  # Api::V1::Image. As you add validations to Api::V1::Image, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for(:image)
  }

  let(:invalid_attributes) {
    { src: nil }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Image.create! valid_attributes
      get api_v1_images_url, headers: { "ACCEPT" => "application/json" }

      expect(response.body).to include_json([
        id: /\d/,
        url: (be_kind_of String)
      ])

    end
  end

  describe "POST /create" do
    context "with valid parameters" do

      it "creates a new Image" do
        post api_v1_images_url, params: { image: valid_attributes }, headers: { "ACCEPT" => "application/json" }

        expect(response.body).to include_json(
          id: /\d/,
          url: (be_kind_of String)
        )
      end

    end

    context "with invalid parameters" do

      it "does not create a new Api::V1::Image" do

        expect {
          post api_v1_images_url, params: { image: invalid_attributes }, headers: { "ACCEPT" => "application/json" }
        }.to raise_error(ActiveRecord::RecordInvalid)

      end

    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested api/v1_image" do
      image = Image.create! valid_attributes
      expect {
        delete api_v1_image_url(image), headers: { "ACCEPT" => "application/json" }
      }.to change(Image, :count).by(-1)
    end

  end
end
