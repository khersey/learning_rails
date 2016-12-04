class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 125 }, presence: true
  before_save { |micropost| micropost.content = content.upcase }
end
