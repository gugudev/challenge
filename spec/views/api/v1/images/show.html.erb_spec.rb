require 'rails_helper'

RSpec.describe "api/v1/images/show", type: :view do
  before(:each) do
    @api/v1_image = assign(:api/v1_image, Api::V1::Image.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
