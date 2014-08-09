require 'node'

class Tree

  def print_names(node)
    puts node.name
    node.children.each do |child|
      print_names(child)
    end
  end

  def names(node)
    name_array = [node.name]
    node.children.map do |child|
      name_array += names(child)
    end
    name_array
  end

  def names_with_indentation(node)
    multiplier = 0
    indented_node = node.name + ("  " * multiplier)
    name_array = [indented_node]
    node.children.each do |child|
      multiplier += 1
      name_array += names_with_indentation(child)
    end
  end
end