require 'rails_helper'

# Test suite for the Item model
RSpec.describe Item, type: :model do

  # Assiciation test
  # ensure an item record belongs to a single todo record (meaning 1:1 relationship)
  it {should belong_to(:todo)}

  # Validation tests
  # ensure column name is present before saving
  it {should validate_presence_of(:name)}

end
