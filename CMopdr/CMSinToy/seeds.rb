require './contacts_file'

contacts = []

contacts << { name: "Buzz Lightyear", id: "sku 001" , quantity: 100}
contacts << { name: "Woody" , id: "sku 002", quantity: 250}
contacts << { name: "Rex" , id: "sku 003", quantity: 2}
contacts << { name: "Patato head" , id: "004" , quantity: 135}
contacts << { name: "Slinky" , id: "sku 005" , quantity: 1}

write_contacts( contacts )
