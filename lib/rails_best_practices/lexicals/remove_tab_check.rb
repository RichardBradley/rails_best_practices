# encoding: utf-8
require 'rails_best_practices/core/check'

module RailsBestPractices
  module Lexicals
    # Make sure there are no tabs in files.
    #
    # See the best practice details here http://rails-bestpractices.com/posts/81-remove-tab
    class RemoveTabCheck < Core::Check
      url "http://rails-bestpractices.com/posts/81-remove-tab"

      # check if the content of file contains a tab.
      #
      # @param [String] filename name of the file
      # @param [String] content content of the file
      def check(filename, content)
        if content =~ /\t/m
          line_no = $`.count("\n") + 1
          add_error("remove tab, use spaces instead", filename, line_no)
        end
      end
    end
  end
end
