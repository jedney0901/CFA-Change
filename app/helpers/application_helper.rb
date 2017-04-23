module ApplicationHelper
  # def paint_submission(stance)
  #   if sub_type == 'pro'
  #     'class_which_shows_affirmative_colours define me in tyour styles'
  #   else
  #     'another_class'
  #   end
  # end

  def affirmative_negative(input)
    input ? "Affirmative" : "Negative"
  end


end
