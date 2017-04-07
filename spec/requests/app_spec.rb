require File.expand_path '../../spec_helper.rb', __FILE__

describe 'MyApp' do
  it 'allow access to the root URL' do
    get '/v1/'
    expect(response.status).to eq 200
    expect_json(message: 'API v1!')
  end
end
