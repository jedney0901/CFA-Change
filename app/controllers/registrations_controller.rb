class MyDevise::RegistrationsController < Devise::RegistrationsController


  def user_home
    @debates = current_user.debates
    @submissions = current_user.debate.submissions
  end
end
