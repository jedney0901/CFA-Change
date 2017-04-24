class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def admin_dashboard
    @debates = Debate.all
    @users = User.all
  end

end
