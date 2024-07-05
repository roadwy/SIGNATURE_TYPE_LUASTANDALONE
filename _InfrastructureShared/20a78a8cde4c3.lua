local L0_0
L0_0 = 0
if 0 < mp.bitand(mp.HSTR_WEIGHT, 240) then
  L0_0 = 16
end
L0_0 = L0_0 + mp.bitand(mp.HSTR_WEIGHT, 15)
if L0_0 >= 18 then
  return mp.INFECTED
elseif L0_0 >= 2 then
  mp.set_mpattribute("HSTR:Rogue:Win32/Trapwot_Lowfi")
end
return mp.CLEAN
