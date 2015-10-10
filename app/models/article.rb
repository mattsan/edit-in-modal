class Article < ActiveRecord::Base
  belongs_to :board

  validates :title, presence: true
  validates :author, presence: true
end
