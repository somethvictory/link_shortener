class Url < ApplicationRecord
  belongs_to :user

  validates :short_name,    presence: true
  validates :original_name, presence: true
end
