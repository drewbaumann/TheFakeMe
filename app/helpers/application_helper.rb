module ApplicationHelper

  # Return the logo via a helper, rather than explicit code.
  # def logo
  #   logo = image_tag("logo.jpeg", :alt => "Snackpack", :class => "round")
  # end
  
  def title(page_title)
    content_for(:title) { page_title }
  end

end
