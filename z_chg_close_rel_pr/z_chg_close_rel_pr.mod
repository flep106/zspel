	MODIFY chg POST_VALIDATE
    z_chg_close_rel_pr( persistent_id,  id )
    9017 FILTER( (EVENT("INSERT UPDATE")) && ( status{->"RE"} ) ) ;