local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if not (L0_0 < 2048) then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
elseif L0_0 > 20480 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pesecs[3].PointerToRawData, 32)
if L0_0:match("^%x+$") and string.gsub(L0_0, "%x", "") == 32 then
  return mp.INFECTED
end
return mp.CLEAN
