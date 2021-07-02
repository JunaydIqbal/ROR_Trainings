class Bank

  private

    def insert_manager(options)
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/managers.txt", 'a')
        file.print(options[0], " | ", options[1], " | ", options[2], " | ", options[3], "\n")
        file.close
        return true
      rescue
        return false
      end
    end

  public

    def create_manager(name, branch)
      if name != "" && branch != ""
        id = rand(1000) + 1
        password = rand(9999) + 1
        options = [name, branch, id, password]
        return insert_manager(options)
      else
        return false
      end
    end

end