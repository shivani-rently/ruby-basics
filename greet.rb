class Greet
    attr_accessor :names
    def initialize(names = "Srk")
        @names = names
    end
    def hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}"
            end
        else
            puts "Hello #{@names}"
        end
    end
    def bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "bye #{@names.join(", ")}"
        else
            puts "bye #{@names}"
        end
    end
end

g = Greet.new
g.hi
g.bye

g.names = "Shivani"
g.hi
g.bye

g.names = ["Shivani", "Neha", "Surya"]
g.hi
g.bye

g.names = nil
g.hi
g.bye
