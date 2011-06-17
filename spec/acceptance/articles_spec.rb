# encoding: UTF-8
require 'spec_helper'

#feature "Articles", %q{ In order to have an awesome blog } do
feature "Articles" do
  scenario "Article index" do
    visit '/articles'
    page.should have_content('Artículos')
  end

  scenario "Agregar un artículo" do
    visit new_article_path
    fill_in 'nombre', :with => 'producto 1'
    fill_in 'precio', :with => '10.50'
    click_button 'article_submit'
#    click_button 'Crear artículo'

#    current_path.should == article_path
    puts current_path
    page.should have_content "Detalles del artículo"
    within(".show") do
      page.should have_content 'producto 1'
      page.should have_content '10.5'
    end
  end
end

