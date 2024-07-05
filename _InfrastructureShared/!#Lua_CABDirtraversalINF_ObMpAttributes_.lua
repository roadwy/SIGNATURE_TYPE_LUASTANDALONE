local L0_0
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 1)
if L0_0 ~= 1178817357 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L0_0 = L0_0(headerpage, 29)
if L0_0 ~= 1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 60)
if L0_0 ~= 791555584 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readheader
L0_0 = L0_0(60, 255)
if string.find(L0_0, "%.%.%/.*%.inf", 0) then
  return mp.INFECTED
end
return mp.CLEAN
