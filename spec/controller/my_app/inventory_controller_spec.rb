ENV['RAILS_ENV']='test'
require './config/environment'
require 'rspec/rails'

RSpec.describe MyApp::InventoryController, type: :controller do
  describe '#index' do
    it 'should do something' do
      get(:index)
    end
  end
end
