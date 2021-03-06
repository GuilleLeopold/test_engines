module Customers
    class PasswordsController < DeviseTokenAuth::PasswordsController
      protect_from_forgery with: :exception
      include Api::Concerns::ActAsApiRequest
      skip_before_action :check_json_request, on: :edit
    end
  end
end
