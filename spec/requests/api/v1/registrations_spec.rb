require 'swagger_helper'

RSpec.describe 'api/v1/registrations', type: :request do

  path '/api/v1/signup/sign_up' do

    post('new registration') do
      tags 'User'
      response(200, 'successful') do

        consumes 'application/json'
        
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            email: { type: :string },
            name: { type: :string },
            password: { type: :string },
            photo: { type: :string }
          },

          required: [ 'email', 'name', 'password', 'photo']
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

end
