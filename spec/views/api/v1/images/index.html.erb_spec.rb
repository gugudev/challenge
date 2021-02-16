require 'rails_helper'

RSpec.describe "api/v1/images/index", type: :view do
  before(:each) do
    assign(:api_v1_images, [
      Api::V1::Image.create!(),
      Api::V1::Image.create!()
    ])
  end

  it "renders a list of api/v1/images" do
    render
  end
end
