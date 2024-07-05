local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = {}
L0_0["c:\\windows\\inf"] = "inf"
L0_0["c:\\windows\\help"] = "help"
L0_0["c:\\windows\\debug"] = "debug"
L0_0["c:\\windows\\media"] = "media"
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
  if L2_2 > 8 then
    L3_3 = L1_1
    L2_2 = L1_1.sub
    L4_4 = 1
    L5_5 = 8
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    if L2_2 == "\\device\\" then
      L2_2 = MpCommon
      L2_2 = L2_2.PathToWin32Path
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L3_3 = L2_2
      L2_2 = L2_2.lower
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    end
    L2_2 = L0_0[L1_1]
    L3_3 = L0_0[L1_1]
    if L3_3 ~= nil then
      L3_3 = "FileDropBySuspectedVatet_"
      L4_4 = "Lua:Context/SuspectedVatet!"
      L5_5 = L3_3
      L6_6 = L2_2
      L5_5 = L5_5 .. L6_6
      L6_6 = L4_4
      L6_6 = L6_6 .. L2_2
      if not MpCommon.QueryPersistContext(L1_1, L5_5) then
        MpCommon.AppendPersistContext(L1_1, L5_5, 1000)
      end
      mp.set_mpattribute(L6_6)
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
