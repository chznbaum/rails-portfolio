module PortfoliosHelper
  def image_generator(width:, height:)
    "https://placehold.it/#{width}x#{height}"
  end

  def portfolio_img img, type
    if !img.nil?
      img
    elsif type == 'thumb'
      image_generator(width: '350', height: '200')
    elsif type == 'main'
      image_generator(width: '600', height: '400')
    end
  end
end
