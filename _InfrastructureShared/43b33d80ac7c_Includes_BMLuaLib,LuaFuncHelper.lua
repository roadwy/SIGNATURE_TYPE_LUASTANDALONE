local L0_0
L0_0 = pcallEx
L0_0("maceSendConfig", maceSendConfig, "mace_zloader")
L0_0 = pcallEx
L0_0("reportRelatedBmHits", reportRelatedBmHits)
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10
  L0_1 = bm
  L0_1 = L0_1.get_current_process_startup_info
  L0_1 = L0_1()
  L1_2 = "DllMsiexecInject.A_CmdLineDll"
  L2_3 = MpCommon
  L2_3 = L2_3.GetPersistContextCountNoPath
  L2_3 = L2_3(L3_4)
  if L2_3 > 0 then
    L2_3 = MpCommon
    L2_3 = L2_3.GetPersistContextNoPath
    L2_3 = L2_3(L3_4)
    for L6_7, L7_8 in L3_4(L4_5) do
      L8_9 = string
      L8_9 = L8_9.match
      L9_10 = L7_8
      L9_10 = L8_9(L9_10, "([%w%p]+);([%w%p]+)")
      L9_10 = string.lower(L9_10)
      if L8_9 == L0_1.ppid and string.find(L9_10, "\\appdata\\", 1, true) then
        bm.add_threat_file(L9_10)
        break
      end
    end
  end
end
pcallEx("remediateDll", L0_0)
reportPcallEx()
return mp.INFECTED
