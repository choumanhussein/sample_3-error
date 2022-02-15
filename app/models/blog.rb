class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, length:{in: 1..20}
  validates :title, uniqueness: true
end
