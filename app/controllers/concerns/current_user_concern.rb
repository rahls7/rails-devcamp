module CurrentUserConcern
    extend ActiveSupport::Concern

  def current_user
    super || get_guest_user
  end

  def get_guest_user
    guest = Guest.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    return guest
  end
end
