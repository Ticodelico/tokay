class PagesController < ApplicationController
  skip_before_action :protect_pages

  def index
  end

  def faq
  end

  def contact
  end

  def home
    @pagy, @restaurants =
      pagy_countless(FindRestaurants.new.call(params), items: 12)
  end

  def blog
  end

  def about
  end
end
