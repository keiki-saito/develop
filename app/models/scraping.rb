class Scraping < ApplicationRecord
    require 'mechanize'
    def self.anime
        agent = Mechanize.new
        #page = agent.get("https://www.netflix.com/browse/genre/6721?bc=83")
        page = agent.get("https://netflix-fan.jp/lineup-anime/")
        #page=agent.get("https://society5.net/1828")
        #@elements = page.search('div.wc-shortcodes-column a noscript img')
        elements = page.search('div.wc-shortcodes-column a img')
        #elements = page.search('section.entry-content noscript img')
    
        links=[]
        
        
        elements.each do |ele|
            links<<ele.get_attribute('src')
        end

        links.each do |link|
            janime=Janime.new(anime_url: link)
            janime.save
        end

        


   
    end


   def self.movie
        agent = Mechanize.new
        #page = agent.get("https://netflix-fan.jp/lineup-japanese-movie/")
        page=agent.get("https://society5.net/1866")
        #@elements = page.search('div.wc-shortcodes-column a noscript img')
        elements=page.search('section.entry-content noscript img')
        links=[]

        elements.each do |ele|
            links << ele.get_attribute('src')
        end

        links.each do |link|
            movie=Movie.new(movie_url: link)
            movie.save
        end
    end




    def self.test
        agent = Mechanize.new
        page = agent.get("https://netflix-fan.jp/lineup-anime/")
        elements = page.search('div.wc-shortcodes-column a img')
        links=[]
        elements.each do |ele|
            links<<ele.get_attribute('src')
        end

        links.each do |link|
            test=Test.new(test_url: link)
            test.save
        end
    
   end


   def self.jmovie
    agent = Mechanize.new
    page = agent.get("https://netflix-fan.jp/lineup-japanese-movie/")
    elements = page.search('div.wc-shortcodes-column a img')
    links=[]
    elements.each do |ele|
        links<<ele.get_attribute('src')
    end

    links.each do |link|
        test=Jmovie.new(jmovie_url: link)
        test.save
    end

end 


def self.fmovie
    agent = Mechanize.new
    page = agent.get("https://netflix-fan.jp/lineup-foreign-movie/")
    elements = page.search('div.wc-shortcodes-column a img')
    links=[]
    elements.each do |ele|
        links<<ele.get_attribute('src')
    end

    links.each do |link|
        fmovie=Fmovie.new(fmovie_url: link)
        fmovie.save
    end

end 


end
