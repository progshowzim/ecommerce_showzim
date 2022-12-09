class ProductDecorator < SimpleDelegator
  def full_promo
    if promo?
      "<span class=\"text-muted text-decoration-line-through\">#{ActionController::Base.helpers.number_to_currency price}</span> #{ActionController::Base.helpers.number_to_currency promo_price}".html_safe
    else
      ActionController::Base.helpers.number_to_currency price
    end
  end
end
