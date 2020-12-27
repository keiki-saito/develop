class < ApplicationRecord
    require 'mechanize'
    def self.anime
        agent = Mechanize.new
        #page = agent.get("https://www.netflix.com/browse/genre/6721?bc=83")
        page = agent.get("https://netflix-fan.jp/lineup-anime/")
        #page=agent.get("https://society5.net/1828")
        elements = page.search('img')
        #elements = page.search('div.wc-shortcodes-column a img')
        # titles=page.search('div.wc-shortcodes-row div.wc-shortcodes-column a')
        #elements = page.search('section.entry-content noscript img')
    
        links=[]
      
       
        elements.each do |ele|  
            #if ele.get_attribute('src')
              links<<ele
            
        end

        # binding.pry
        links.each do |link|
            # janime=Janime.new(anime_url: link)
            # janime.save
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


def self.jtv
    agent = Mechanize.new
    page = agent.get("https://netflix-fan.jp/lineup-japanese-tv-drama/")
    elements = page.search('div.wc-shortcodes-column a img')
    links=[]

    elements.each do |ele|  
        if ele.get_attribute('src').include?('.jpg')
          links<<ele.get_attribute('src')
        end
    end

     links.each do |link|
         jtv=Jtv.new(jtv_url: link)
         jtv.save
     end
end


def self.original
    agent = Mechanize.new
    page = agent.get("https://netflix-fan.jp/lineup-netflix/")
    elements = page.search('div.wc-shortcodes-column a img')
    links=[]

    elements.each do |ele|  
        if ele.get_attribute('src').include?('.jpg')
          links<<ele.get_attribute('src')
        end
    end

     links.each do |link|
         original=Original.new(original_url: link)
         original.save
     end
end


end
