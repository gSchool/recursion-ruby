require 'node'

class Tree

  def print_names(name)
    puts name.name
    name.children.each do |child|
      print_names(child)
    end
  end
end