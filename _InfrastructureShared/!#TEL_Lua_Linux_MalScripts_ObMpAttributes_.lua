if #mp.enum_mpattributesubstring("SCPT:Linux/Trojan.mal_attr_") >= 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
