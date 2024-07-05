if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
mp.set_mpattribute("MpRequestSMSM")
return mp.INFECTED
