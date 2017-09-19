class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  include SerhatViewTool

  before_action :set_copyright

  def set_copyright
    @copyright = SerhatViewTool::Renderer.copyright('Ibrahim Serhat', 'All rights reserved.')
  end
end
