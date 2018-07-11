Given("The following dishes exist in the database") do |table|
    table.hashes.each do |hash|
    FactoryBot.create(:dish, hash)
    end
end
  
Given("the following categories exist") do |table|
    table.hashes.each do |hash|
        FactoryBot.create(:category, hash)
    end
  end