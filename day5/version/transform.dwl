%dw 2.0
import version from dw::Runtime
output application/json
---
// link: https://docs.mulesoft.com/dataweave/2.5/dw-runtime-functions-version

version() 

// output
// "2.5"