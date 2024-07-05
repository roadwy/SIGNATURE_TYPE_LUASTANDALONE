local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L0_0 = L0_0("RPF:SACPrev:ML:prob:Malware")
if L0_0 then
  SetAttributeFromClassifierScoresEx(L0_0, {
    99,
    95,
    90,
    80,
    70,
    30,
    20,
    10,
    5,
    0
  }, "Lua:SACPrev:Malware:")
end
return mp.CLEAN
