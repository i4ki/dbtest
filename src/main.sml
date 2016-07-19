(* main *)

structure DBtest =
struct

exception DBtestExn of string

fun handleNoCommand _ = let
    val msgList : string list = [
        "No command specified",
        "Invoke dbtest --help for more information on usage"
    ]
    val concatFn = String.concatWith ("\n")
in
    raise DBtestExn (concatFn (msgList))
end

fun parseArgs nil = handleNoCommand ()
  | parseArgs (args:string list) =
    case hd (args)
     of "json2sql" => JSON2Sql.main ("json2sql", tl (args))
      | _ => raise DBtestExn ("Unknown command: " ^ hd (args))

fun processArgs cmd = (print (cmd ^ "\n"); OS.Process.success)

fun main (name, args) =
   let
       val cmd = parseArgs (args)
   in
       (print ("DBtest tool v0.0.1\n");
        processArgs cmd)
   end
   handle (DBtestExn s) => (print (s ^ "\n"); OS.Process.failure)
end
