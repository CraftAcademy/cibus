Given("The following dishes exist in the database") do |table|
    table.hashes.each do |hash|
    FactoryBot.create(:dish, hash)
    end
end
  
  Then("I should see {string} in the {string} category") do |dish_name, category|
    expect(page).to have_content dish_name with: category
  end