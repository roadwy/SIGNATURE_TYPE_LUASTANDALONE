local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epscn_islast
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitor
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.bitor(mp.bitor(mp.bitor(mp.readu_u32(headerpage, 33), mp.readu_u32(headerpage, 37)), mp.readu_u32(headerpage, 41)), mp.readu_u32(headerpage, 45)), mp.readu_u32(headerpage, 49)), mp.readu_u32(headerpage, 53))
L0_0 = L0_0(L1_1, mp.readu_u32(headerpage, 57))
if L0_0 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
