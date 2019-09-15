class Page < ApplicationRecord
  has_many :paragraphs
  has_many :certifications
  accepts_nested_attributes_for :certifications, allow_destroy: true
  accepts_nested_attributes_for :paragraphs, allow_destroy: true
end
