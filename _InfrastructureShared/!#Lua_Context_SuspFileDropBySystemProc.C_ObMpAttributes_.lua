local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_FILEPATH
    L1_1 = L1_1(L2_2)
    L2_2 = L1_1
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
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
      L1_1 = L2_2
      if L1_1 == nil then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.getfilename
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
    L2_2 = L2_2(L3_3)
    L4_4 = L2_2
    L3_3 = L2_2.sub
    L5_5 = 1
    L6_6 = 8
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    if L3_3 == "\\device\\" then
      L3_3 = MpCommon
      L3_3 = L3_3.PathToWin32Path
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      L2_2 = L3_3
      if L2_2 == nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      L2_2 = L3_3
    end
    L3_3 = {}
    L3_3["c:\\windows\\system32"] = "sysdir"
    L3_3["c:\\windows"] = "windir"
    L3_3["c:\\users\\public"] = "public"
    L3_3["c:\\programdata"] = "programdata"
    L3_3["c:\\perflogs"] = "perflogs"
    L4_4 = L3_3[L1_1]
    if L4_4 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.get_contextdata
      L5_5 = mp
      L5_5 = L5_5.CONTEXT_DATA_PROCESS_ID
      L4_4 = L4_4(L5_5)
      if L4_4 < 12 then
        L4_4 = L3_3[L1_1]
        L5_5 = "SuspFileDroppedBySystemProcessC_"
        L6_6 = L4_4
        L5_5 = L5_5 .. L6_6
        L6_6 = "Lua:Context/SuspFileDropBySystemProc.C!"
        L6_6 = L6_6 .. L4_4
        if mp.get_mpattribute("BM_MZ_FILE") then
          L5_5 = "SuspExeFileDroppedBySystemProcessC_" .. L4_4
          L6_6 = "Lua:Context/SuspExeFileDropBySystemProc.C!" .. L4_4
        end
        if not MpCommon.QueryPersistContext(L2_2, L5_5) then
          MpCommon.AppendPersistContext(L2_2, L5_5, 100)
        end
        mp.set_mpattribute(L6_6)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
