require 'swagger_helper'

RSpec.describe 'api/v1/jets', type: :request do

  path '/api/v1/add-jet' do
    tags 'Jets'
    post('create jet') do
      response(200, 'successful') do

        consumes 'application/json'
        parameter name: :jet, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            category: { type: :string },
            description: { type: :string },
            price_per_day: { type: :integer },
            finance_fee: { type: :integer },
            size: { type: :string },
            image: { type: :string }
          },
          required: %w[name category description price_per_day finance_fee size image]
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

  path '/api/v1/delete-jet' do

    delete('delete jet') do
      tags 'Jets'
      response(200, 'successful') do

        consumes 'application/json'
        parameter name: :jet, in: :body, schema: {
          type: :object,
          properties: {
            id: { type: :integer }
          },
          required: %w[id]
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

  path '/api/v1/update-jet' do

    patch('update jet') do
      tags 'Jets'
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
  end

  path '/api/v1/jets' do

    get('list jets') do
      response(200, 'successful') do
        tags 'Jets'
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

  path '/api/v1/jets/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show jet') do
      response(200, 'successful') do
        let(:id) { '123' }

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
