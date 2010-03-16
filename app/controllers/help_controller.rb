class HelpController < ApplicationController

  def show_help
    help_file = Helpfile.find_by_title(params[:title])
    redirect_to help_file.url
  end
  
end