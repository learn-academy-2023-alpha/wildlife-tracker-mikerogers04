require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without common name and scientific binomial.' do
    animal = Animal.create(common_name: 'Giant Panda', scientific_binomial: 'Ailuropoda melanoleuca')
    expect(animal).to be_valid
  end

  it 'is not valid if common name and scientific name are not unique' do
    animal1 = Animal.create(common_name: 'Giant Panda', scientific_binomial: 'Giant Panda')
    expect(animal1.errors).to be_empty
  end


  it 'does not allow same common name and scientific binomial' do
    animal2 = Animal.create(common_name: 'Giant Panda', scientific_binomial: 'Giant Pand')
    expect(animal2.errors).to be_empty
  end
end
