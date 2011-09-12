module ApplicationHelper
  def page_title
    ((@title + " &mdash; " if @title).to_s + 'Nanotaiga').html_safe
  end
end
