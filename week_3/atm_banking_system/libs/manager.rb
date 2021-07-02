require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/libs/bank'

class Manager < Bank

  @@fetch_all_manager = Array.new

  private
    def fetch_record
      begin
        i = 0
        file = File.new('/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/managers.txt', 'r')
        file.each_line do |line|
          per_line_data = line.split(" | ")
          @@fetch_all_manager[i] = per_line_data
          i += 1
        end
        file.close
        return @@fetch_all_manager
      rescue
        return nil
      end
    end

    def is_exist_branch(branch)
      if @@fetch_all_manager != nil
        @@fetch_all_manager.each do |per_manager|
          if per_manager[1] == branch
            return true
          end
        end
      end
      return false
    end

  public
    
    def login(id, password)
      manager_data = fetch_record
      manager_data.each do |per_manager|
        if per_manager[2] == id && per_manager[-1].to_i == password.to_i
          return per_manager
        end
      end
      print ("\n***Authentication Failed!\n")
      nil
    end

    def create_manager(name, branch)
      if is_exist_branch(branch)
        print("\nBrach code is already exist\n")
        return -1
      else
        super(name, branch)
      end
    end

end

