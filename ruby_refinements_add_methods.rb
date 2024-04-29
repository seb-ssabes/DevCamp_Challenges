# Use Ruby Refinements to add methods to customized classes using monkey patching
# without affecting the rest of "your program"
# Do not use Monkey Patching on the String class like this
def String
  def commentize
    "# #{slef}"
  end
end
# Because the program might need to also do comments in other formats like html and css


module RubyContent
  refine String do
    def commentize
      "# #{self}"
    end
  end
end

module HtmlContent
  refine String do
    def commentize
      "<!-- #{self} -->"
    end
  end
end

class ContentController
  using RubyContent
  def initialize(word)
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end

class HtmlController
  using HtmlContent
  def initialize(word)
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end

cc = ContentController.new("HOLA")
p cc.hidden_content

html = HtmlController.new("HOLA")
p html.hidden_content
