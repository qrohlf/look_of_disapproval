require "look_of_disapproval/version"

module LookOfDisapproval
  class Disapprover
    def initialize(message=nil, emoji=nil)
      @template = ERB.new(File.read(File.dirname(__FILE__)+'/look_of_disapproval/disapprove.erb'))
      @message = message
      @emoji = emoji
    end

    def to_html
      @template.result(binding)
    end

    def write(filename)
      File.write(filename, to_html)
    end
  end
end
