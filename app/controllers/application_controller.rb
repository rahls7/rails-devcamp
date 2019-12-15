class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copywright

  def set_copywright
    @copywright = GenericCopywrightSite::Renderer.copywright("Rahul Sharma", 'All rights reserved')
  end

end
