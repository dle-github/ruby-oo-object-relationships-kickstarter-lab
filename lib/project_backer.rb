class ProjectBacker
    attr_reader :project, :backer
    @@all = Array.new

    def initialize(input1, input2)
        p "initialize class [ProjectBacker] with project [#{input1} and backer [#{input2}]]"; sleep 1
        @project = input1
        @backer = input2
        @@all << self
    end

    def self.all
        @@all
    end
end