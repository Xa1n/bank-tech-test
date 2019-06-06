## Bank Tech Test

This is a practice tech test intended to prepare you for a real-life test
for a specific software job.

### Requirements

 * You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

* Deposits, withdrawal.

* Account statement (date, amount, balance) printing.

* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2019, 
**And** a deposit of 2000 on 13-01-2019,
**And** a withdrawal of 500 on 14-01-2019,
**When** they print their bank statement,
**Then** they would see:

```
date       || credit  || debit  || balance
14/01/2019 ||         || 500.00 || 2500.00
13/01/2019 || 2000.00 ||        || 3000.00
10/01/2019 || 1000.00 ||        || 1000.00
```

### User Stories

```
As someone with a bank account,
So that I can see details about my money,
I'd like a log that displays my transactions.

As a bank account user,
So that I know when I made a withdrawal,
I'd like a list of dates in my log next to the specific amounts I withdrew.

As a bank account user,
So that I know when I made a deposit,
I'd like a list of dates in my log next to the specific amounts I deposited.

As a bank account user,
So that I don't overspend,
I would like to see my current and past balances.

```

### Visualisation

```
|| Objects || Messages ||
-------------------------
  Account  || Display
  Dates    || Time record
  Balance  || Add money
           || Deduct money
```

### Technologies/Dependencies

* Ruby
* RSpec
* Rubocop
* Simplecov


### Set up

Clone this repository. Cd to it in your terminal and download the dependencies with: 
```
bundle install
```

### How to use

In your terminal, open up your REPL:
```
irb
```

Then require the files:
```
require './lib/bank_account'
require './lib/account_display'
```

In order to have the bank account, you must create an instance of it:
```
account = Account.new
```

If you write the above, the account will be created with a starting balance of 0.00 and the date as the present date in day/month/year format. You can manipulate the starting balance and the date by passing in optional parameters, like so:
```
account = Account.new([starting_amount, date])
```

You can then run a set of methods with the instantiated account.
```
account.deposit(required_parameter)
account.withdraw(required_parameter)
account.current_balance
```

In order to display a table of your transactions, you have to create an instance of the Display class in the same way as the account, like so:
```
display = Display.new(account.logs)
display.display_account
```
Running the second command will give the raw code of the method. If you want to see it in the correct table format, you must use 'puts':
```
puts display.display_account
```

To run the tests, exit out of irb and simply type 'rspec' in the command line. All tests should pass and coverage should be at 100%

Thank you!