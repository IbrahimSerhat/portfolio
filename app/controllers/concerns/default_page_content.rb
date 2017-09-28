module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_default_content
  end

  def set_default_content
    @page_title = 'My Portfolio | You can see my works'
    @seo_keywords = 'portfolio, web design, website creator, ruby on rails'
    @blog_title = 'My blog, my articles'
    @blog_description = 'You lucky because You can see my articles'
  end
end
