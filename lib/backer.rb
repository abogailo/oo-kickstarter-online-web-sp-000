class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(backer_name)
    @backed_projects = []
    @name = backer_name
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end
