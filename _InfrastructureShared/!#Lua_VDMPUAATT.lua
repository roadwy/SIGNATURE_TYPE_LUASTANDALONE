if mp.get_mpattributesubstring("PUA:Block:") or mp.get_mpattributesubstring("PUA:ML:Blocked:") or mp.get_mpattributesubstring("PUA:IRST:Block:") then
  return mp.INFECTED
end
return mp.CLEAN
