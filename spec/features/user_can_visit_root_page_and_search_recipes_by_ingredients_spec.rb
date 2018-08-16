require 'rails_helper'

feature "User can search recipes by ingredients" do
  scenario "and see list of top 10 recipes with those ingredients" do
      visit "/"
      fill_in(:q[], :with => "apples")
      fill_in(:q[], :with => "sugar")
      fill_in(:q[], :with => "flour")
      click_on "Find Recipes"

      expect(current_path).to eq('/')
      expect(current_url).to include("allowedIngredient[]=apples")
      expect(current_url).to include("allowedIngredient[]=sugar")
      expect(current_url).to include("allowedIngredient[]=flour")

      expect(page).to have_content("10 Matching Recipes")

      within(first(".recipes")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".ingredients")
        expect(page).to have_css(".course-type")
        expect(page).to have_css(".time")
      end
  end
end
