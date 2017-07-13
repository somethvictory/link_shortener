FactoryGirl.define do
  factory :url do
    short_name    FFaker::Internet.http_url
    original_name FFaker::Internet.http_url
    association   :user
  end
end
