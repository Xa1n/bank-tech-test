class Display

    def initialize(logs)
      @logs = logs
    end
  
    def table
      columns = "date       || credit || debit || balance\n"
    end
  
    def display_account

      return 'You have no transactions to display' if @logs.count == 1
      statement = ''

      @logs.reverse.each do |log|
        statement += "#{log[0]} || #{format('%.2f', log[1])} "
        statement += "|| #{format('%.2f', log[2])} || #{format('%.2f', log[3])} \n"
      end

      table + statement
    end
  end