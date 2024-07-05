local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.ismsil
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.PointerToRawData
L1_1 = pesecs
L2_2 = pehdr
L2_2 = L2_2.NumberOfSections
L1_1 = L1_1[L2_2]
L1_1 = L1_1.SizeOfRawData
L0_0 = L0_0 + L1_1
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L1_1 = L1_1 - L0_0
if L1_1 < 4096 or L1_1 > 9437184 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(L3_3, L4_4)
if L3_3 < 4096 then
  return L3_3
end
for L6_6 in L3_3(L4_4, L5_5) do
  if #L6_6 > 4096 then
    mp.set_mpattribute("//MpBase64DecodeLongLines")
    mp.vfo_add_buffer(L6_6, "[Obfuscator.AN]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
end
L6_6 = 1
if L3_3 == 711333360 then
  return L3_3
end
L6_6 = 1
if L3_3 == 3050913556 then
  return L3_3
end
L6_6 = 1
if L3_3 == 3919771653 then
  return L3_3
end
L6_6 = 1
if L3_3 == 3301795126 then
  return L3_3
end
L6_6 = 1
if L3_3 == 1939688586 then
  return L3_3
end
L6_6 = 1
if L3_3 == 1008989909 then
  return L3_3
end
L6_6 = 1
if L3_3 == 3958531149 then
  return L3_3
end
return L3_3
