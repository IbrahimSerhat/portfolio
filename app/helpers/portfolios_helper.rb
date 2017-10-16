# Helper of portfolio
module PortfoliosHelper
  def image_generator(height:,width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img(item, type)
    if item.image?
      if type == 'thumb'
        item.image.thumb
      else
        item.image
      end
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end
end
