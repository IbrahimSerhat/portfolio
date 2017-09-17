class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250',width: '250')
  end
end
