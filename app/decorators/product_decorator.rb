class ProductDecorator < SimpleDelegator
  include ActionView::Helpers::NumberHelper
  
  def price
    return number_to_currency(super) unless promo?

    "<span class=\"text-muted text-decoration-line-through\">#{number_to_currency(super)}</span> #{number_to_currency(promo_price)}".html_safe
  end
end
