local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_PATH
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L4_4 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L2_2 = #L0_0
  if L2_2 > 10 and L1_1 ~= nil then
    L2_2 = #L1_1
    if L2_2 > 4 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L1_1
      L4_4 = -3
      L2_2 = L2_2(L3_3, L4_4)
      L3_3 = {}
      L3_3.ocx = true
      L3_3.cpl = true
      L3_3.tmp = true
      L4_4 = L3_3[L2_2]
      if L4_4 == true then
        L4_4 = "LUA:Ext_"
        L4_4 = L4_4 .. L2_2
        mp.set_mpattribute(L4_4)
        return mp.CLEAN
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
