require 'spec_helper'

describe "hotels/show" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :name => "Name",
      :city => "City",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/City/)
    rendered.should match(/1/)
  end
end
