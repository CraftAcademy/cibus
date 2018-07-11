Given("The following dishes exist in the database") do |table|
    table.hashes.each do |hash|
    FactoryBot.create(:dish, hash)
    end
end
  
  Then("I should see {string} in the {string} category") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end