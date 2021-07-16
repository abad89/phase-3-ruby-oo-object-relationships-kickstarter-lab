class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = ProjectBacker.all.select{|p| p.project == self}
        arr.map(&:backer)
    end
end