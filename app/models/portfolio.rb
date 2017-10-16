class Portfolio < ApplicationRecord
  has_many :technologies
  validates_presence_of :title, :body
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs.blank? }

  mount_uploader :image, PortfolioUploader


  def self.by_position
    order('position ASC')
  end
end