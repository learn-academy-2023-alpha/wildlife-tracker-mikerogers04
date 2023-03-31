require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is not valid without latitude, longitude, or date.' do
    Animal.create(common_name: 'Snake', scientific_binomial: 'small snake')
    sighting = Sighting.create
    expect(sighting.errors).to_not be_empty
  end
end
