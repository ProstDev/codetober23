%dw 2.0
output application/json
// example 1
// import Module

// example 2
// import * from Module

// example 3
// import function2 from Module

// example 4
// import function1, function2, function3 from Module

// example 5
// import function from Module1
// import function from Module2

// example 6
// import Module1
// import Module2

// example 7
// import Module1 as Mod1 // alias Mod1 for Module1
// import function as fm2 from Module2 // alias fm2 for function
// import 
//     function as func,
//     function1 as f1,
//     function2 as f2,
//     function3 as f3
// from Module

// example 8
import * from folder1::folder2::F2
---
// example 8
function()

// example 7
// {
//     Mod1: Mod1::function(),
//     fm2: fm2(),
//     ModuleFunctions: func(),
//     allfs: f1().hello1 ++ f2().hello2 ++ f3().hello3
// }

// example 6
// Module1::function().hello
// ++ " - " 
// ++ Module2::function().hello

// example 5
// function() // from Module1

// example 4
// function1() ++ function2()

// example 3
// function2()

// example 2
// function()

// example 1
// Module::function()