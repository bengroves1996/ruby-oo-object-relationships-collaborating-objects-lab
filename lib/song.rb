require "pry"

class Song
    attr_accessor :artist, :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
    def self.new_by_name(name)
        song = self.new(name)
        song.name = name
        song 
    end
      
    def save
      @@all << self
    end

    def self.all
        @@all
    end
    
    def self.new_by_filename(file_name)
        
        keep = file_name.split(/[-.]/).map{|string|string.strip}
        self.new_by_name(keep[1])
        i = 0
        runner = (0..Artist.all.length).to_a
        for i in runner
            if keep[0] == Artist.all[i].name
                
                Song.new(keep[1])
                
                
                #assign song to artist!!!
            else 
                
                Artist.new(keep[0])
            end
            
            i = i+1
            
            
            
        end 
        #if keep[0] is in @all artist bin then append songs for that artists
        #else create artist save song to that artist and save artist to song
    end 
  end 

  