type 'a stack = 'a list

let empty = []

let push x stack = x :: stack

let peek = function
  | [] -> failwith "Cannot peek empty stack"
  | x :: _ -> x

let pop = function
  | [] -> failwith "Cannot pop empty stack"
  | _ :: stack -> stack
