require './spec/spec_helper'
require './lib/sample'

RSpec.describe 'Deep freezable' do
  describe '.deep_freeze' do
    context 'to array' do
      it 'フリーズできること' do
        expect(Sample::ARRAY_COUNTRIES). to eq ['Japan', 'US', 'India']
        expect(Sample::ARRAY_COUNTRIES.frozen?).to eq true
        expect(Sample::ARRAY_COUNTRIES.all? { |c| c.frozen? }).to eq true
      end
    end

    context 'to hash' do
      it 'フリーズできること' do
        expect(Sample::HASH_COUNTRIES).to eq({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
        expect(Sample::HASH_COUNTRIES.frozen?).to eq true
        expect(Sample::HASH_COUNTRIES.all? { |key, value| key.frozen? && value.frozen? }).to eq true
      end
    end
  end
end
