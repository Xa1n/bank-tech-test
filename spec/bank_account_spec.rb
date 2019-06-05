require 'bank_account'
require 'timecop'

RSpec.describe Account do

  subject(:account) { described_class.new }
  let(:amount) { 1000.0 }
  let(:amount2) { 250.0 }
  
  describe '#current_balance' do

    it 'returns current balance of 0 before any actions are made' do
      expect(account.current_balance).to eq 0.0
    end

    it 'returns correct current balance after transactions have been made' do
      account.deposit(amount)
      account.withdraw(amount2)
      expect(account.current_balance).to eq 750.0
    end
  end
end