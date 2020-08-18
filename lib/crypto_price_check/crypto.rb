class Crypto
    attr_accessor :name, :description, :id, :price, :shortdescription
  
    @@all = []
  
    def initialize(crypto_input)
      @name = crypto_input["name"]
      @price = crypto_input["market_data"]["current_price"]["usd"] 
      @description = crypto_input["description"]["en"]
      @id = crypto_input["id"]
      @shortdescription = @description.chomp("\n")
      @@all << self
          
    end

   

  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
        self.all.detect { |x| x.name.downcase == name.downcase }
    end
  
    def print_pretty
      puts @name
    end
  end