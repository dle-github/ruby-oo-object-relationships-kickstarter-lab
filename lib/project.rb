class Project
    attr_reader :title
    @@all = Array.new

    def initialize(input)
        p "initialize class [Project] with title [#{input}]"; sleep 1
        @title = input
        @@all << self

    end

    def add_backer(input)
        backer = input
        
        matches = Backer.all.find_all{|x| x == input}
        if matches.empty?
            p "no backer matches with name [#{input}]"
        end

        ProjectBacker.new(self, backer)
    end

    def backers
        projectBackers = ProjectBacker.all.find_all{|x| x.project == self}.map{|x| x.backer}
        projectBackers
    end

    def self.all
        @@all
    end
end