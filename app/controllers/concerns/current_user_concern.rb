module CurrentUserConcern
    extend ActiveSupport::Concern

  def current_user
    super || get_guest_user
  end

  def get_guest_user
    OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@test.com")
  end
end
