require 'spec_helper'
require 'lmgtfy/runner'

describe Lmgtfy::Runner do

  it "accepts search query from the user" do
    runner = Lmgtfy::Runner.new
    runner.query.should eq ARGV[0]
  end

  it "generates correct url" do
    runner = Lmgtfy::Runner.new
    runner.generate_lmgtfy_url.should eq "http://lmgtfy.com/?q=#{ARGV[0]}"
  end

end
