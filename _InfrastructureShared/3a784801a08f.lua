if peattributes.ismsil == true and mp.get_mpattribute("SIGATTR:Trojan:MSIL/Zilla.AMMG!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
