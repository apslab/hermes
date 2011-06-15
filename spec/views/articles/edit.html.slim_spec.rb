require 'spec_helper'

describe "articles/edit.html.slim" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do
      assert_select "input#article_name", :name => "article[name]"
      assert_select "input#article_price", :name => "article[price]"
    end
  end
end
