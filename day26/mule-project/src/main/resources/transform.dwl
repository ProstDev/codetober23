%dw 2.0
import between from dw::core::Periods
output application/json
---
{
    id: payload.id,
    name: payload.firstName ++ payload.lastName,
    age: (now() between payload.birthDate as Date).years,
    email: payload.email,
    country: upper(payload.address.country[0 to 1]),
    phone: (payload.phone.countryCode[1 to -1] ++ payload.phone.number) as Number
}

/*{
  "id": 1,
  "name": "Alex Martinez",
  "age": 100,
  "email": "alex@email.com",
  "country": "CA",
  "phone": 11231231233
}*/