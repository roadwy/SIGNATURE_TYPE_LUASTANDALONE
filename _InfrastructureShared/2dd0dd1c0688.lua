local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readheader
L2_2 = 0
L3_3 = 16
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "\000\001\000\000\000\255\255\255\255\001\000\000\000\000\000\000", 1, true)
if L2_2 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("BM_SerializedObj.A")
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L3_3 = L3_3(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if string.find(L3_3, "\\local\\microsoft\\event viewer\\", 1, true) then
    mp.set_mpattribute("Lua:FileInsideEventviewFolder")
  end
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
