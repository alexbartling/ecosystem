class PagesController < ApplicationController
  def home
    @title = "Home"
    @nodes = Node.all.in_groups(3, false)
    @nodes1 = @nodes[0]
    @nodes2 = @nodes[1]
    @nodes3 = @nodes[2]
  end
end
