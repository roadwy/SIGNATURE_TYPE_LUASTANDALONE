local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.hstr_full_log
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0[1]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = L0_0[2]
    L1_1 = L1_1.matched
  else
    if L1_1 then
      L1_1 = set_research_data
      L2_2 = "TamperingCMD"
      L3_3 = "systemsettingsadminflows"
      L1_1(L2_2, L3_3, false)
  end
  else
    L1_1 = L0_0[3]
    L1_1 = L1_1.matched
    if not L1_1 then
      L1_1 = L0_0[4]
      L1_1 = L1_1.matched
    else
      if L1_1 then
        L1_1 = set_research_data
        L2_2 = "TamperingCMD"
        L3_3 = "DisableRealtimeMonitoring"
        L1_1(L2_2, L3_3, false)
    end
    else
      L1_1 = L0_0[5]
      L1_1 = L1_1.matched
      if not L1_1 then
        L1_1 = L0_0[6]
        L1_1 = L1_1.matched
        if not L1_1 then
          L1_1 = L0_0[7]
          L1_1 = L1_1.matched
          if not L1_1 then
            L1_1 = L0_0[8]
            L1_1 = L1_1.matched
          end
        end
      else
        if L1_1 then
          L1_1 = set_research_data
          L2_2 = "TamperingCMD"
          L3_3 = "DisableAntiVirus_DisableAntiSpyware"
          L1_1(L2_2, L3_3, false)
      end
      else
        L1_1 = L0_0[9]
        L1_1 = L1_1.matched
        if not L1_1 then
          L1_1 = L0_0[10]
          L1_1 = L1_1.matched
          if not L1_1 then
            L1_1 = L0_0[11]
            L1_1 = L1_1.matched
            if not L1_1 then
              L1_1 = L0_0[12]
              L1_1 = L1_1.matched
            end
          end
        elseif L1_1 then
          L1_1 = set_research_data
          L2_2 = "TamperingCMD"
          L3_3 = "ServiceStop"
          L1_1(L2_2, L3_3, false)
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
L2_2 = false
L3_3 = pcall
L2_2, L3_3 = MpCommon.QuerySessionInformation, L3_3(MpCommon.QuerySessionInformation, L1_1, MpCommon.WTSIsRemoteSession)
_ = L3_3
L3_3 = MpCommon
L3_3 = L3_3.NidSearch
L3_3 = L3_3(mp.NID_ENABLE_EXTENDED_BAFS, 3)
if L3_3 then
  L3_3 = set_research_data
  L3_3("Reason", "AggressivePeTrigger", false)
else
  L3_3 = GetRollingQueueKeys
  L3_3 = L3_3("ThreatsOnMachine_Lua")
  if L3_3 ~= nil then
    L3_3 = GetRollingQueueKeys
    L3_3 = L3_3("ThreatsOnMachine_Lua")
    if type(L3_3) == "table" and next(L3_3) ~= nil then
      set_research_data("Reason", "ExistingThreatsOnMachine", false)
      set_research_data("ThreatsOnMachine", "[" .. table.concat(L3_3, "|") .. "]", false)
    end
  elseif L2_2 then
    L3_3 = MpCommon
    L3_3 = L3_3.WTSUserName
    if MpCommon.QueryPersistContextNoPath("MpNewRemoteUsers", L3_3) then
      set_research_data("Reason", "NewRemoteUser", false)
    end
  else
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.LOWFI
return L3_3
