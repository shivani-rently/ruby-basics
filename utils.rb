require "json"

def open_db
    file = File.read("./db.json")
    db = JSON.parse(file)
    return db
end

def write_to_db(db)
    File.write("./db.json", JSON.dump(db))
end