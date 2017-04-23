class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def admin_dashboard
    @debates = Debates.all
  end

end
