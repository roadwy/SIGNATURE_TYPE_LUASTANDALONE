local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.ENGINEBUILD
if L0_0 < 19850 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_ID
L0_0 = L0_0(L1_1)
if L0_0 == 4 then
  L1_1 = pcall
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_REMOTE_SESSION_IP
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 and L2_2 and L2_2 ~= "" then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L4_4 = "Lua:RemoteContextPresent"
    L3_3(L4_4)
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L4_4 = "Lua:RemoteIP!"
    L5_5 = L2_2
    L4_4 = L4_4 .. L5_5
    L3_3(L4_4)
    L3_3 = pcall
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_REMOTE_SESSION_DOMAINNAME
    L4_4 = L3_3(L4_4, L5_5)
    if L3_3 and L4_4 and L4_4 ~= "" then
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = "Lua:RemoteDom!"
      L7_7 = L4_4
      L6_6 = L6_6 .. L7_7
      L5_5(L6_6)
    end
    L5_5 = pcall
    L6_6 = mp
    L6_6 = L6_6.get_contextdata
    L7_7 = mp
    L7_7 = L7_7.CONTEXT_DATA_REMOTE_SESSION_USERNAME
    L6_6 = L5_5(L6_6, L7_7)
    if L5_5 and L6_6 and L6_6 ~= "" then
      L7_7 = mp
      L7_7 = L7_7.set_mpattribute
      L7_7("Lua:RemoteUsr!" .. L6_6)
    end
    L7_7 = mp
    L7_7 = L7_7.IsHipsRuleEnabled
    L7_7 = L7_7("d1e49aac-8f56-4280-b9ba-993a6d77406c")
    if L7_7 then
      L7_7 = mp
      L7_7 = L7_7.set_mpattribute
      L7_7("Lua:RemoteHipsRuleEnabled")
    end
    L7_7 = mp
    L7_7 = L7_7.getfilename
    L7_7 = L7_7(mp.FILEPATH_QUERY_LOWERCASE)
    if not L7_7 or L7_7 == "" then
      return mp.CLEAN
    end
    if L7_7:sub(1, 8) == "\\device\\" then
      L7_7 = MpCommon.PathToWin32Path(L7_7)
      if L7_7 then
        L7_7 = L7_7:lower()
      else
        return mp.CLEAN
      end
    end
    if mp.get_mpattribute("BM_MZ_FILE") then
      AppendToRollingQueue("SuspExeFileDroppedViaSMB", L7_7, nil, 5000)
    else
      AppendToRollingQueue("SuspFileDroppedViaSMB", L7_7, nil, 5000)
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
