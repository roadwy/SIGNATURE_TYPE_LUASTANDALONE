local L0_0
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[5]
L0_0 = L0_0.RVA
if L0_0 <= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[5]
L0_0 = L0_0.Size
if L0_0 <= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pehdr.DataDirectory[5].RVA, 9)
if mp.readu_u32(L0_0, 5) ~= 131584 then
  return mp.CLEAN
end
if L0_0:byte(9) ~= 48 then
  return mp.CLEAN
end
return mp.INFECTED
