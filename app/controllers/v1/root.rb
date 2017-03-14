module Controllers
  module V1
    module Root
      extend ActiveSupport::Concern

      included do
        get '/' do
          json message: 'API v1!'
        end
      end
    end
  end
end
