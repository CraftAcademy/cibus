When('I press {string} button in {string} table') do |button_name, dish_name|
    dish = Dish.find_by(name: dish_name)
    within "#dish-#{dish.id}" do
      click_link_or_button button_name
  end  
end

And('I press {string} link') do |click|
  click_on('Proceed to checkout')
end

Then("I should be on {string} page") do |string|
  #binding.pry
  expect(page).to eq string
end


Then("I should see {string} in my order") do |string|
  expect(page).to have_content string
end