module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_default_content
  end

  def set_default_content
    @page_title = 'My Portfolio | You can see my works'
    @seo_keywords = 'portfolio, web design, website creator, ruby on rails'
  end
end
