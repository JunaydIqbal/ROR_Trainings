require_relative 'libs/menu'
require_relative 'libs/bank'
require_relative 'libs/manager'
require_relative 'libs/account'
require_relative 'libs/customer'
require_relative 'libs/atm'

menu = Menu.new

menu.main_menu
ch = menu.feature

case ch
when '1'
  data_get = menu.login_manager
  manager = Manager.new
  fetch_manager_record = manager.login(data_get[0], data_get[1])
  if fetch_manager_record != nil
    ch = menu.manager_portal(fetch_manager_record)
    case ch.to_s
    when '1'
      data_get = menu.create_manager
      check  = manager.create_manager(data_get[0], data_get[1])
      check == true ? print("\n* Manager for branch #{data_get[1]} successfully created!\n") : print("\n* Error during created Manager\n")
    when '2'
      data_get = menu.create_customer_account
      account = Account.new(data_get[0], data_get[1], data_get[2], data_get[4], data_get[5])
      check = account.insert_customer(fetch_manager_record[1], data_get[3])
      check == true ? print("Customer Account Created!") : print("* Error during account creation\n")
    when '3'
      menu.display_transection
      ATM.get_transections
    when '4'
      data_get = menu.search_customer
      Customer.search_customer(data_get)
    when '5'
      data_get = menu.debit_amount
      cust_data = Customer.login(data_get[0])
      if cust_data != nil
        atm = ATM.new
        balance = atm.debit(cust_data, cust_data[7].to_i, data_get[1])
        Customer.update(data_get[0], balance)
      else
        print("\nCustomer not found\n")
      end
    else
      puts "***Invalid Input\n"
    end
  end
when '2'
  data_get = menu.atm_transection
  cust_data = Customer.login(data_get[0], data_get[1])
  if cust_data != nil
    amount = menu.after_login_customer(cust_data)
    atm = ATM.new
    balance = atm.withdraw(cust_data, cust_data[7].to_i, amount.to_i)
    balance == -1 ? print("\nYou didn't withdraw amount due to less balance from 500 if you'll withdraw\n\n") : Customer.update(data_get[0], balance)
  end
else
  puts "\n***Invalid Input***"
end