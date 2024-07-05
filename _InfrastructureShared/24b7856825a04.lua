if mp.HSTR_WEIGHT > 5 and mp.HSTR_WEIGHT < 10 then
  mp.set_mpattribute("HSTR:Torwofun.A")
elseif mp.HSTR_WEIGHT == 5 then
  mp.set_mpattribute("do_exhaustivehstr_rescan_torwofun_a1")
end
return mp.INFECTED
