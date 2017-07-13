require 'rails_helper'

RSpec.describe Url, 'Association', type: :model do
  it { is_expected.to belong_to(:user) }
end

RSpec.describe Url, 'Validations', type: :model do
  it { is_expected.to validate_presence_of(:short_name) }
  it { is_expected.to validate_presence_of(:original_name) }
end
