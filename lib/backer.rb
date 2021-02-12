class Backer
    attr_reader :name
    @@all = Array.new

    def initialize(input)
        p "initialize class [Backer] with name [#{input}]"; sleep 1
        @name = input
        @@all << self

    end

    def back_project(input)
        project = input

        matches = Project.all.find_all{|x| x == input}
        if matches.empty?
            p "no project matches with [#{input}]"
        end
        
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backedProjects = ProjectBacker.all.find_all{|x| x.backer == self}.map{|x| x.project}
        backedProjects
    end

    def self.all
        @@all
    end
end