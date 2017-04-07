# Sinatra APP
class MyApp < Sinatra::Base
  use Rack::PostBodyContentTypeParser

  register Sinatra::Namespace

  set :raise_errors, false

  register do
    def auth (type)
      condition do
        halt 401 unless send("is_#{type}?")
      end
    end
  end

  helpers do
    def is_admin?
      # Verify if the request content is an authenticable Admin
      false
    end

    def is_client?
      # Verify if the request content is an authenticable Client
      true
    end
  end

  error do
    json error: env['sinatra.error'].class, error_message: env['sinatra.error'].message
  end

  namespace '/v1' do
    include Controllers::V1::Root

    namespace '/admin', auth: :admin do
      include Controllers::V1::Admin
    end

    namespace '/client', auth: :client do
      include Controllers::V1::Client
    end
  end
end
