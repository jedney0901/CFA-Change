class ProfilesRegistrationController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    new_user_registration_path
  end

  def after_sign_in_path_for(resource)
    edit_user_registration_path
  end

end
