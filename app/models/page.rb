class Page < ApplicationRecord
  has_many :paragraphs
  accepts_nested_attributes_for :paragraphs, allow_destroy: true
end
