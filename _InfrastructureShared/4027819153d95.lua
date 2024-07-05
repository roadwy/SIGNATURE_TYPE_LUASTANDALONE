local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4000000 or L0_0 < 4000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "PEPCODE:HasDigitalSignature"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "pea_ismsil"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L2_2 = hstrlog
L2_2 = L2_2[3]
L6_6 = hstrlog
L6_6 = L6_6[7]
L7_7 = hstrlog
L7_7 = L7_7[8]
L2_2 = false
for L6_6 = 1, #L1_1 do
  L7_7 = L1_1[L6_6]
  L7_7 = L7_7.matched
  if L7_7 then
    L7_7 = L1_1[L6_6]
    L7_7 = L7_7.VA
    if L7_7 ~= -1 then
      L7_7 = pe
      L7_7 = L7_7.mmap_va
      L7_7 = L7_7(L1_1[L6_6].VA, 30)
      if string.find(L7_7, "\014\000\a\128", 1, true) == nil then
        L2_2 = true
        break
      end
    end
  end
end
if L2_2 == false then
  return L3_3
end
return L3_3
