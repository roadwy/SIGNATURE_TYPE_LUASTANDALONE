local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pcallEx
L1_1 = "get_startup_info"
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L1_1 = L0_0(L1_1, L2_2)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = L1_1.ppid
  end
else
  L2_2 = L2_2 or ""
end
function L3_3()
  local L0_6, L1_7, L2_8, L3_9, L4_10, L5_11
  L0_6 = GetRollingQueueKeys
  L0_6 = L0_6(L1_7)
  if L0_6 ~= nil then
    if L1_7 == "table" then
      for L4_10, L5_11 in L1_7(L2_8) do
        bm.add_related_string("mace_015b9d6d", L5_11, bm.RelatedStringBMReport)
      end
    end
  end
end
function L4_4()
  local L0_12, L1_13, L2_14, L3_15, L4_16, L5_17
  L0_12 = GetRollingQueueKeys
  L0_12 = L0_12(L1_13)
  if L0_12 ~= nil then
    if L1_13 == "table" then
      for L4_16, L5_17 in L1_13(L2_14) do
        bm.add_related_string("mace_82e27b72", L5_17, bm.RelatedStringBMReport)
      end
    end
  end
end
function L5_5()
  local L0_18, L1_19
  L0_18 = string
  L0_18 = L0_18.format
  L1_19 = "ScanBeaconing.A:%s"
  L0_18 = L0_18(L1_19, _UPVALUE0_)
  L1_19 = MpCommon
  L1_19 = L1_19.AtomicCounterValue
  L1_19 = L1_19(L0_18)
  if L1_19 ~= nil then
    bm.add_related_string("mace_7d0d767b", string.format("%d", L1_19), bm.RelatedStringBMReport)
  end
end
pcallEx("BlockC2Connection", BlockC2Connection, "cobaltstrike_d")
pcallEx("maceSendConfig", maceSendConfig, "mace_atosev")
pcallEx("reportRelatedBmHits", reportRelatedBmHits)
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, false, true, "SMS_H", 5000, "Behavior:Win32/CobaltStrike.D!sms")
pcallEx("addChildrenAsThreat", addChildrenAsThreat)
pcallEx("reportPatch", L4_4)
pcallEx("reportHosts", L3_3)
pcallEx("reportBeaconing", L5_5)
reportPcallEx()
reportRdTrace()
return mp.INFECTED
