class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
      arr =  ProjectBacker.all.select{|p| p.backer == self}
      arr.map(&:project)
    end
end