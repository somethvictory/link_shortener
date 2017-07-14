class Url < ApplicationRecord
  belongs_to :user

  has_many   :logs

  validates :original_name, presence: true, format: { :with => /\A(http|https)\:\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix }
  validates :original_name, uniqueness: true

  before_validation :set_short_name

  private
  def set_short_name
    random_strs = ['0'..'9', 'A'..'Z', 'a'..'z'].map { |range| range.to_a }.flatten
    self.short_name = 7.times.map { random_strs.sample }.join
  end
end
