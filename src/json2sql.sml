

structure JSON2Sql =

struct
exception Exn of string

type config = {
    table:string,
    database:string,
    batchSize:option,
    file:instream
}

fun parseArgs nil = raise Exn("Missing parameters")
  | parseArgs (args:string list) =
    let
        val cfg
    case hd (args) of
        ""
    in
        cfg
    end

fun convert (cfg:config) =
  (print ("Table: " ^ cfg.table ^ "\n");
   print ("Database: " ^ cfg.database ^ "\n"))

fun main (name:string, args:string list) =
  let
      val cfg = parseArgs (args)
  in
      convert (cfg)
  end
