(* Initial statement *)

val () = OS.Process.exit(
        DBtest.main(
            CommandLine.name (),
            CommandLine.arguments ()
        )
    )
