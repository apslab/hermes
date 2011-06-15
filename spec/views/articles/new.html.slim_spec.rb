require 'spec_helper'

describe "articles/new.html.slim" do
  before(:each) do
    assign(:article, stub_model(Article,
      :name => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_name", :name => "article[name]"
      assert_select "input#article_price", :name => "article[price]"
    end
  end
end
