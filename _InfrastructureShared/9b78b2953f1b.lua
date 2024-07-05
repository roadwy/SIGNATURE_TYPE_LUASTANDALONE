if peattributes.dt_error_not_enough_memory then
  mp.set_mpattribute("do_vmmgrow_rescan")
  return mp.LOWFI
end
return mp.CLEAN
