class CLI

    def run
      system("clear")
      @user_input = nil
      @API = APIService.new
      until @user_input == "exit"
        main_menu
      end
  
    end

  
    def main_menu
      puts "Welcome to Crypto Price Checker! Type the name of the cryptocurrency you'd like to research:"
      @user_input = gets.chomp()
      @crypto = @API.get_crypto_by_name(@user_input.downcase)
      #binding.pry
      if @crypto != nil #Crypto id nil
        attribute_checker
      end
  
    end
  
  


    def attribute_checker

        puts "Type the number of the option to select it."
        puts "1. Description of the crypto"
        puts "2. Price of the crypto"
        puts "3. Search another crypto"
        puts "4. Exit the program"
        @user_input = gets.chomp
        case @user_input
            when "1"
              puts @crypto.shortdescription
              sleep(2)
              attribute_checker
            when "2"
              puts "The price in US Dollars is $#{@crypto.price}."
              sleep(2)
              attribute_checker
            when "3"
              sleep(0.5)
              main_menu
            when "4"
              exit
            else
              puts "invalid input"
            
        end
    end
    






  

    
       

  
  
  end