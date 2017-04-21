module ApplicationHelper
  def paint_submission(stance)
    if stance == 'affirmative'
      'class_which_shows_affirmative_colours'
    else
      'another'
    end
  end
end
