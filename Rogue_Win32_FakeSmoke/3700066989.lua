local L0_0
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3988]
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3989]
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3990]
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3991]
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3992]
if L0_0 ~= 119 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3993]
if L0_0 ~= 102 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3994]
if L0_0 ~= 68 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = footerpage
L0_0 = L0_0[3995]
if L0_0 ~= 85 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitxor
L0_0 = L0_0(mp.readu_u32(footerpage, 3996), mp.readu_u32(footerpage, 4096))
if L0_0 ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED
