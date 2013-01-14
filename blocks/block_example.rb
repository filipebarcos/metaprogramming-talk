module SetupBlock
  def setup(&block)
    @setup_block = block
  end

  def it(regex, &block)
    return unless block_given?
    @setup_block.call if @setup_block
    yield
  end
end


class UsingMyBlock
  extend SetupBlock

  def self.RunMyTests
    setup do
      puts "I'll have to execute before"
    end

    it "should call setup before" do
      puts "I'm just a plain method2"
    end
  end
end
