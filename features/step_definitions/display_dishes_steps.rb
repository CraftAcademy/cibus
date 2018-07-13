Given("the following dishes exists") do |table|
    table.hashes.each do |hash|
        FactoryBot.create(:dish, hash)
    end
end

Then("I should see {string}") do |name|
    expect(page).to have_content name
end

Then("I should see currency {string}") do |currency|
    expect(page).to have_content currency
end

Then("I should see {string} column") do |quantity_form|
    expect(page).to have_content quantity_form
end

