local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_filesize_by_handle
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 > 65536 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile_by_handle
L3_3 = L0_0
L4_4 = 0
L5_5 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tostring
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2
L5_5 = "%z\r%z\n%zS%zT%z %z=%z %z\"%z(.-)\"%z\r%z\n"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L2_2
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = 0
for L9_9 in L6_6(L7_7, L8_8) do
  L10_10 = string
  L10_10 = L10_10.byte
  L10_10 = L10_10(L9_9, 1, 2)
  L5_5 = L5_5 + L10_10 * 256 + L10_10(L9_9, 1, 2)
end
for L10_10 in L7_7(L8_8, L9_9) do
end
L10_10 = mp
L10_10 = L10_10.ADD_VFO_TAKE_ACTION_ON_DAD
L7_7(L8_8, L9_9, L10_10)
return L7_7
