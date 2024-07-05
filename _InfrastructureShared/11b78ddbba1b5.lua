if pehdr.TimeDateStamp >= 1429568715 then
  mp.set_mpattribute("Lowfi:HSTR:BProtect:AskGuard.B")
  return mp.CLEAN
end
return mp.INFECTED
