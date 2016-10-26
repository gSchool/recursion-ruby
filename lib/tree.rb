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

  def names_with_indentation(node, multiplier = 0)
    name_array = ["#{("  " * multiplier)}#{node.name}"]
    node.children.each do |child|
      name_array += names_with_indentation(child, multiplier + 1)
    end
    name_array
  end

  def to_hash(node)
    name_hash = {node.name => {}}
    node.children.each do |child|
      name_hash[node.name].merge!(to_hash(child))
    end
    name_hash
  end
end
