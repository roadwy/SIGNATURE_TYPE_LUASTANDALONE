local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = epcode
L0_0 = L0_0(L1_1, 1)
if L0_0 == 1610613227 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = epcode
  L0_0 = L0_0(L1_1, 5)
  if L0_0 == 673477691 then
    L0_0 = pehdr
    L0_0 = L0_0.Subsystem
  end
elseif L0_0 ~= 1 then
  L0_0 = mp
  L0_0 = L0_0.LOWFI
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.ImageBase
L1_1 = pesecs
L1_1 = L1_1[1]
L1_1 = L1_1.VirtualAddress
L0_0 = L0_0 + L1_1
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(L0_0, 4)
if string.sub(L1_1, 1, 4) == "(re)" then
  mp.changedetectionname(805306430)
end
return mp.INFECTED
