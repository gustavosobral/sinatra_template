module Controllers
  module V1
    module Admin
      extend ActiveSupport::Concern

      included do
        get '/' do
          json message: 'Admin API v1!'
        end
      end
    end
  end
end
