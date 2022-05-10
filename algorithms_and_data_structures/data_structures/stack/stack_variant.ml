type 'a stack =
  | Empty
  | Entry of 'a * 'a stack

let empty = Empty

let push x stack = Entry (x, stack)

let peek = function
  | Empty -> failwith "Cannot peek empty stack"
  | Entry (x, _) -> x

let pop = function
  | Empty -> failwith "Cannot pop empty stack"
  | Entry (_, stack) -> stack
