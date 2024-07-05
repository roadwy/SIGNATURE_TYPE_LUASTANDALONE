local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L0_0 = L0_0("RPF:GoLang:pclntab_magic_unknown")
if L0_0 and mp.bitand(L0_0, 4294967280) ~= 4294967280 then
  return mp.INFECTED
end
return mp.CLEAN
