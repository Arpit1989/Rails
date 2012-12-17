class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication
 def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
end
  def check_permissions
    authorize! :create, resource
  end
end