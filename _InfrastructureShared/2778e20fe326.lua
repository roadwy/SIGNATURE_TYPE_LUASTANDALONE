if peattributes.ismsil == true and mp.get_mpattribute("Trojan:MSIL/Injector.B1!ibt") then
  return mp.INFECTED
end
return mp.CLEAN
