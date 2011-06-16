# encoding: UTF-8
require 'spec_helper'

feature "Articles", %q{ In order to have an awesome blog } do
  scenario "Article index" do
    visit '/articles'
    page.should have_content('Artículos')
  end
end

