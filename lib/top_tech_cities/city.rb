class TopTechCities::City
    attr_accessor :name, :salary, :companies_hiring
@@all =[]
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.create_from_scrape #can i put this in the scraper class?
        TopTechCities::Scraper.scrape_city_name.each do |c|
            self.new(c)
        end
    end

    def self.salaries #want the salaries to be #{city}.salary
        TopTechCities::Scraper.salary_scraped
    end

    def self.top_companies #how can I print this so it isn't an a array, but more of a list without printing all companies
        TopTechCities::Scraper.company_scraped
    end
   
end