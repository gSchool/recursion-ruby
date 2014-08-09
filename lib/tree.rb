require 'node'

class Tree

  def print_names(node)
    puts node.name
    node.children.each do |child|
      print_names(child)
    end
  end

  def names(node)
    name_array = []
    name_array << node.name
    node.children.map do |child|
      name_array += names(child)
    end
    name_array
  end
end