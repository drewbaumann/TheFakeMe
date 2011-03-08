class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    if user_signed_in?
      redirect_to identities_path
    else
      nil
    end
  end

end
