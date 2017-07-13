require 'rails_helper'

RSpec.describe Url, 'Association', type: :model do
  it { is_expected.to belong_to(:user) }
end

RSpec.describe Url, 'Validations', type: :model do
  it { is_expected.to validate_presence_of(:original_name) }
  it { is_expected.to validate_uniqueness_of(:original_name) }
  it { is_expected.to allow_value('http://example.com').for(:original_name) }
  it { is_expected.to allow_value('https://example.com').for(:original_name) }
  it { is_expected.not_to allow_value('example.com').for(:original_name) }
  it { is_expected.not_to allow_value('http://example').for(:original_name) }
  it { is_expected.not_to allow_value('example').for(:original_name) }

  it 'sets short name before save' do
    @url = FactoryGirl.build(:url, short_name: '')
    @url.save
    expect(@url.short_name).not_to be nil
  end
end
