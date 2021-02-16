require 'rails_helper'

RSpec.describe "api/v1/images/new", type: :view do
  before(:each) do
    assign(:api/v1_image, Api::V1::Image.new())
  end

  it "renders new api/v1_image form" do
    render

    assert_select "form[action=?][method=?]", api_v1_images_path, "post" do
    end
  end
end
