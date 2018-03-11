require 'spec_helper'
describe 'lamptest' do
  context 'with default values for all parameters' do
    it { should contain_class('lamptest') }
  end
end
