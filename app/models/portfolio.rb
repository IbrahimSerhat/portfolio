class Portfolio < ApplicationRecord
  has_many :technologies
  includes Placeholder
  validates_presence_of :title, :body, :image
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs.blank? }
  #after_initialize :set_defaults

  mount_uploader :image, PortfolioUploader

  #def set_defaults
  #  self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
  #  self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200')
  #end

  def self.by_position
    order('position ASC')
  end
end