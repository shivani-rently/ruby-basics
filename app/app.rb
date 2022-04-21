require_relative "utils.rb"

def form
    puts "Username: "
    name = gets.chomp
    db = open_db
    if db.has_key?(name)
        print "User Exists"
    else  
        puts "Password: "
        pswd =gets.chomp
        db[name] = {"name":name, "pswd":pswd}
        write_to_db(db)
        print "User Created"
    end
end

if __FILE__ == $0
    form
end