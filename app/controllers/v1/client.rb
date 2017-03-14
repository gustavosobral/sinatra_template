module Controllers
  module V1
    module Client
      extend ActiveSupport::Concern

      included do
        get '/' do
          json message: 'Client API v1!'
        end
      end
    end
  end
end
