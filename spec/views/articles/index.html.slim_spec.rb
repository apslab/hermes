require 'spec_helper'

describe "articles/index.html.slim" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :name => "Name",
        :price => "9.99"
      ),
      stub_model(Article,
        :name => "Name",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
