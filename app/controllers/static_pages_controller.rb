class StaticPagesController < ApplicationController

  before_action :restrict_to_logged_in, only: [:admin]

  def home
    render layout: 'home'
  end

  def team
  end

  def portfolio
  end

  def admin
  end

end
