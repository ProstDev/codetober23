%dw 2.0
output application/json
---
payload map ((item, index) -> {
    ID: item.ID,
    code: (item.code1 default "") ++ (item.code2 default ""),
    price: item.price default 0,
    departureDate: item.takeOffDate as Date as String {format: "yyyy/MM/dd"},
    origin: item.fromAirport,
    destination: item.toAirport,
    emptySeats: item.seatsAvailable,
    plane: {
        "type": item.planeType,
        totalSeats: item.totalSeats
    }
})