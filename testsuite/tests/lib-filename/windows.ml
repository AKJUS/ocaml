(* TEST
 target-windows;
 {
   bytecode;
 }{
   native;
 }
*)

let () =
  let cmd = Filename.quote_command "true" ~stdout:"output&false" [] in
  let result = Sys.command cmd in
  Printf.printf "Command: %S\nResult: %d\n" cmd result
