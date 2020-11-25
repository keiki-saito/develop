class ContentsController < ApplicationController

    require 'mechanize'
    def japananime
        agent = Mechanize.new
        #page = agent.get("https://www.netflix.com/browse/genre/6721?bc=83")
        #page = agent.get("https://netflix-fan.jp/lineup-anime/")
        page=agent.get("https://society5.net/1828")
        #@elements = page.search('div.wc-shortcodes-column a noscript img')
        #@elements = page.search('div.wc-shortcodes-column a img')
        @elements = page.search('section.entry-content noscript img')
        @links=[]

        @elements.each do |ele|
          
                @links << ele.get_attribute('src')
           
        end

       



        @contents= Content.all

        


      



       

    

        @contents=Content.all.page(params[:page]).per(10)
      
   end


   def movie
    agent = Mechanize.new
    #page = agent.get("https://netflix-fan.jp/lineup-japanese-movie/")
    page=agent.get("https://society5.net/1866")
    #@elements = page.search('div.wc-shortcodes-column a noscript img')
    @elements=page.search('section.entry-content noscript img')
    @links=[]

    @elements.each do |ele|
      
        @links << ele.get_attribute('src')
       
    end
   end
   
end
