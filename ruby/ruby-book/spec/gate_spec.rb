require './spec/spec_helper'
require './lib/gate'
require './lib/ticket'

RSpec.describe 'Gate' do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  describe 'Umeda to Juso' do
    it 'is OK' do
      ticket = Ticket.new(150)
      umeda.enter(ticket)
      expect(juso.exit(ticket)).to eq true
    end
  end

  describe 'Umeda to Mikuni' do
    it 'is NG' do
    end
    it 'is OK' do
    end
  end

  describe 'Juso to Mikuni' do
    it 'is OK' do
    end
  end
end
