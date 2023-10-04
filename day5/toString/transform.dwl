%dw 2.0
import * from dw::util::Coercions
output application/json
---
// link: https://docs.mulesoft.com/dataweave/2.5/dw-coercions-functions-tostring

{
    c: toString(0.035,"#.##","ES"),
    c: toString(0.035,"#.##","US"),
    c: toString(0.035,"#.##","MX"),
    c: toString(0.035,"#.##","CA"),
    c: toString(0.035,"#.##","AR")
}

/* OUTPUT
{
  "c": "0,04",
  "c": "0.04",
  "c": "0.04",
  "c": "0,04",
  "c": "٠٫٠٤"
}
*/