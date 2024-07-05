local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = TrackPidAndTechniqueBM
  L2_2 = L0_0.ppid
  L1_1(L2_2, L3_3, L4_4)
  L1_1 = MpCommon
  L1_1 = L1_1.ExpandEnvironmentVariables
  L2_2 = "%windir%\\system32\\sdiagnhost.exe"
  L1_1 = L1_1(L2_2)
  L2_2 = sysio
  L2_2 = L2_2.GetProcessFromFileName
  L2_2 = L2_2(L3_3)
  if L2_2 ~= nil then
    if L3_3 > 0 then
      for L6_6, L7_7 in L3_3(L4_4) do
        L8_8 = string
        L8_8 = L8_8.format
        L8_8 = L8_8("pid:%d,ProcessStart:%u", L7_7.pid, L7_7.starttime)
        TrackPidAndTechniqueBM(L8_8, "T1218", "msdt_pcwdiag_target")
      end
    end
  end
  return L3_3
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
