require_relative "utils.rb"

def signup
    print "Username: "
    name = gets.chomp
    db = open_db
    if db.has_key?(name)
        puts "User Exists"
    else  
        print "Email Id: "
        email = gets.chomp
        print "Password: "
        pswd =gets.chomp
        db[name] = {"name":name,"email":email,"pswd":pswd}
        write_to_db(db)
        puts "User Created"
    end
end

def signin
    print "Username: "
    name = gets.chomp
    db = open_db
    if db.has_key?(name)
        print "Password: "
        pswd =gets.chomp
        if db[name]["pswd"] == pswd
            puts "User Logged In"
        else
            puts "Incorrect Password"
        end
    else
        puts "User doesn't exist, please signup!"
        signup
    end
end

def menu
    puts "Welcome\n1. Signin\n2. Signup"
    print "Option: "
    option = gets.chomp.to_i
    if option == 1
        signin
    elsif option == 2
        signup
    else
        puts "Option Unavailable"
    end
end

if __FILE__ == $0
    menu
end