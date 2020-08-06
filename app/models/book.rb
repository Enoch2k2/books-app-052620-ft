class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  validates_presence_of :title, :author, :genre

  accepts_nested_attributes_for :author, reject_if: :all_blank
  accepts_nested_attributes_for :genre, reject_if: :all_blank
end
