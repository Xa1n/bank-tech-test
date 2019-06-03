require 'table_print'



Account = Struct.new(:date, :credit, :debit, :balance)


account = [
    Account.new('test december', 0, 500, 1500),
    Account.new('test january', 2000)

]
