require 'spec_helper'
describe 'pulp' do

  context 'with defaults for all parameters' do
    it { should contain_class('pulp') }
  end
end
