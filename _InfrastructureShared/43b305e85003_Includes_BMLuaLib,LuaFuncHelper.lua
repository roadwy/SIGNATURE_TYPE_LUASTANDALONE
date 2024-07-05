local L0_0
L0_0 = pcallEx
L0_0("maceSendConfig", maceSendConfig, "mace_qakbot")
L0_0 = pcallEx
L0_0("reportRelatedBmHits", reportRelatedBmHits)
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11
  L0_1 = pcall
  L1_2 = bm
  L1_2 = L1_2.get_current_process_startup_info
  L1_2 = L0_1(L1_2)
  if not L0_1 then
    L2_3 = mp
    L2_3 = L2_3.INFECTED
    return L2_3
  end
  L2_3 = "SuspDllExplorerInject.A_CmdLineDll"
  L3_4 = MpCommon
  L3_4 = L3_4.GetPersistContextCountNoPath
  L3_4 = L3_4(L4_5)
  if L3_4 > 0 then
    L3_4 = MpCommon
    L3_4 = L3_4.GetPersistContextNoPath
    L3_4 = L3_4(L4_5)
    for L7_8, L8_9 in L4_5(L5_6) do
      L9_10 = string
      L9_10 = L9_10.match
      L10_11 = L8_9
      L10_11 = L9_10(L10_11, "([%w%p]+);([%w%p]+)")
      L10_11 = string.lower(L10_11)
      if L9_10 == L1_2.ppid and string.find(L10_11, "\\appdata\\", 1, true) then
        bm.add_threat_file(L10_11)
        break
      end
    end
  end
end
pcallEx("remediateDll", L0_0)
reportPcallEx()
return mp.INFECTED
