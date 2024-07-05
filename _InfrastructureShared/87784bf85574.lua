mp.set_mpattribute("HSTR:Trojan:MSIL/Grotseento")
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
