class Project
 attr_accessor :backers
 attr_reader :title

 def initialize(project_name)
    @backers = []
    @title = project_name
 end

 def add_backer(backer)
   backer.backed_projects << self
   @backers << backer
 end
end

#bob = Backer.new("Bob")
#awesome_project = Project.new("This is an Awesome Project")

#
#bob.backed_projects
# => #<Project:0x000001018683d0 @title="This is an Awesome Project"...>

#awesome_project.backers
# => #<Backer:0x000001018b9370 @name="Bob"...>
