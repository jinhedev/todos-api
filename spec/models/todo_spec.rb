require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Todo, type: :model do

  # Association Test
  # ensure Todo model has a 1:m relationship with Item model
  it {should have_many(:items).dependent(:destroy)}

  # Validation tests
  # ensure columns title and created_at are present before saving
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:created_by)}

end
