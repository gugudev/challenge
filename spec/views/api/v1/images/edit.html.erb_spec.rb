require 'rails_helper'

RSpec.describe "api/v1/images/edit", type: :view do
  before(:each) do
    @api/v1_image = assign(:api/v1_image, Api::V1::Image.create!())
  end

  it "renders the edit api/v1_image form" do
    render

    assert_select "form[action=?][method=?]", api/v1_image_path(@api/v1_image), "post" do
    end
  end
end
