local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 80
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 41
L1_1 = L1_1(L2_2, L3_3)
L2_2 = pesecs
L2_2 = L2_2[1]
L2_2 = L2_2.VirtualAddress
if not (L1_1 < L2_2) then
  L2_2 = pesecs
  L3_3 = pehdr
  L3_3 = L3_3.NumberOfSections
  L2_2 = L2_2[L3_3]
  L2_2 = L2_2.VirtualAddress
  L3_3 = pesecs
  L4_4 = pehdr
  L4_4 = L4_4.NumberOfSections
  L3_3 = L3_3[L4_4]
  L3_3 = L3_3.SizeOfRawData
  L2_2 = L2_2 + L3_3
elseif L1_1 >= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = L0_0
L4_4 = 26
L2_2 = L2_2(L3_3, L4_4)
if L2_2 < 32768 or L2_2 > 40960 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = L0_0
L3_3 = L3_3(L4_4, 69)
if L3_3 < 49152 or L3_3 > 57344 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.set_mpattribute
L4_4("PEBMPAT:Virus:Win32/Xpaj.gen!F")
L4_4 = string
L4_4 = L4_4.format
L4_4 = L4_4("CURE:Virus:Win32/Xpaj.gen!F_%08X", L1_1)
mp.set_mpattribute(L4_4)
return mp.INFECTED
