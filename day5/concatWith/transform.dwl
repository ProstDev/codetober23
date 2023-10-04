%dw 2.0
import * from dw::core::Binaries
output application/dw
---
// link: https://docs.mulesoft.com/dataweave/2.5/dw-binaries-functions-concatwith

{
    test1: "CAFEABCD" as Binary {base: "16"},
    test2: "CAFE" as Binary {base: "16"} concatWith "ABCD" as Binary {base: "16"}
}

/* OUTPUT
{
  test1: "yv6rzQ==" as Binary {base: "64"} as Binary {base: "16"},
  test2: "yv6rzQ==" as Binary {base: "64"}
}
*/