$:.unshift File.join(File.dirname(__FILE__))
require 'greeting'

describe "Greeting method" do
    it "says require correct greeting" do
        expect(hello).to eql("hello")
    end
end
