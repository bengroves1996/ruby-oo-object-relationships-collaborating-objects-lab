class MP3Importer
    attr_accessor :test_music_path

    @@all = []

    def initialize (test_music_path)
        @test_music_path = test_music_path
    end

    def import(list_of_filesnames)
        list_of_filesnames.each{|filename| Song.new_by_filename(filename)}
    end 
end