module ApplicationHelper
  def attractiveness_color(likable)
    green_value = 55
    threshold_min = -20
    threshold_max = 20

    attractiveness = likable.likes_sum

    attractiveness = [attractiveness, threshold_min].max
    attractiveness = [attractiveness, threshold_max].min

    if attractiveness > 0
      blue_value = 0
      red_value = ((attractiveness.to_f / threshold_max) * 255).floor
    else
      red_value = 0
      blue_value = -((attractiveness.to_f / threshold_min) * 255).floor
    end

    "#%02x%02x%02x" % [red_value, green_value, blue_value]
  end

  def page_title
    ((@title + " &mdash; " if @title).to_s + 'Nanotaiga').html_safe
  end
end
