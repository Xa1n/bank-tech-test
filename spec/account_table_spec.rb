require 'spec_helper'
require 'bank_account.rb'

RSpec.describe Account do

        let(:account) {Account.new("14/01/19", 5000.00)}
      
        it "knows the date" do
            p account
          expect(account).to include "14/01/19"
        end
end