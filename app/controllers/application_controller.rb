class ApplicationController < ActionController::Base
  def homepage
    render({:template => "layouts/homepage.html.erb"})
  end
end
