require './spec/spec_helper'
require './lib/convert_length'

RSpec.describe 'convert length' do
  describe '#convert_length' do
    it 'returns valid string' do
      expect(convert_length(1, 'm', 'in')).to eq 39.37
    end
  end
end
