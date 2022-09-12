class PagesController < ApplicationController
  skip_before_action :protect_pages

  def index
  end

  def faq
  end

  def contact
  end

  def home
  end

  def blog
  end

  def about
  end
end
