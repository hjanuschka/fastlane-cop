# frozen_string_literal: true

module RuboCop
  module Cop
    module Fastlane
      # This cop finds uses of `alias` where `alias_method` would be more
      # appropriate (or is simply preferred due to configuration), and vice
      # versa.
      # It also finds uses of `alias :symbol` rather than `alias bareword`.
      require "pry"
      class EndNewLine < Cop
        MSG = "ASDF"
      
        def on_begin(node)
       node.children.each_cons(2) do |prev, n|
         nodes = [prev, n]
         binding.pry
        # check_defs(nodes) if nodes.all?(&method(:def_node?))
       end
     end
      
        
      end
    end
  end
end