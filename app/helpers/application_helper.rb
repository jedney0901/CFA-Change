module ApplicationHelper
#   def paint_submission(stance)
#     if stance == 'affirmative'
#       'class_which_shows_affirmative_colours define me in tyour styles'
#     else
#       'another'
#     end
#   end

  def affirmative_negative(input)
    input ? "Affirmative" : "Negative"
  end
end
