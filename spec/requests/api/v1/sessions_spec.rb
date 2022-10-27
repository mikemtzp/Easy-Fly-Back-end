require 'swagger_helper'

RSpec.describe 'api/v1/sessions', type: :request do

  path '/api/v1/login' do

    get('new session') do
      tags 'Sessions', 'User'
      response(200, 'successful') do

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

    post('create session') do
      tags 'Sessions', 'User', 'create'
      response(200, 'successful') do

        consumes 'application/json'
        
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            email: { type: :string },
            password: { type: :string }
          },

          required: [ 'email', 'password']
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
