module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new(name: 'Guest User', email: 'guest@ibrahimserhat.com')
  end
end
