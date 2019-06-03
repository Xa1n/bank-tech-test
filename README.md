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
* Table_print gem
* Rubocop
* Simplecov