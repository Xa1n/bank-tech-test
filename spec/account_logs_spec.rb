require 'account_display'

RSpec.describe Display do

    let(:account) { double :account }

    let(:history) { ["05/06/2019", 0.0, 0.0, 0.0] }
    let(:history1) { ["05/06/2019", 5000.0, 0.0, 5000] }
    let(:history2) { ["05/06/2019", 0.0, 2500.0, 2500.0] }

    describe '#display_account_logs' do

        it 'returns nothing if no transactions have been made' do
            allow(account).to receive(:transactions).and_return([history])
            display = Display.new(account.transactions)

            result =  'You have no transactions to display'
            expect(display.display_account).to eq result
        end

      it 'shows single deposit transaction' do
        allow(account).to receive(:transactions).and_return([history, history1])
        display = Display.new(account.transactions)
        result = "date       || credit || debit || balance\n05/06/2019 || 5000.00 || 0.00 || 5000.00 \n"
        result += "05/06/2019 || 0.00 || 0.00 || 0.00 \n"
        expect(display.display_account).to eq result
      end

      it 'shows several transactions' do
        allow(account).to receive(:transactions).and_return([history, history1, history2])
        display = Display.new(account.transactions)
        result = "date       || credit || debit || balance\n"
        result += "05/06/2019 || 0.00 || 2500.00 || 2500.00 \n"
        result += "05/06/2019 || 5000.00 || 0.00 || 5000.00 \n"
        result += "05/06/2019 || 0.00 || 0.00 || 0.00 \n"
        expect(display.display_account).to eq result
      end
    end
end