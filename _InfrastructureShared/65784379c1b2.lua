local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = hstrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.VA
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0
  L3_3 = 16
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = #L1_1
  if L2_2 == 16 then
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = L1_1
    L4_4 = 7
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= 0 then
      L3_3 = mp
      L3_3 = L3_3.bsplit
      L4_4 = L2_2
      L5_5 = 8
      L6_6 = L3_3(L4_4, L5_5)
      L7_7 = "HSTR:Tovicrypt:CnC/"
      L7_7 = L7_7 .. L3_3 .. "." .. L4_4 .. "." .. L5_5 .. "." .. L6_6
      mp.set_mpattribute(L7_7)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
