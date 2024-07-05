local L0_0
function L0_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8
  L1_2 = sysio
  L1_2 = L1_2.GetProcessFromFileName
  L1_2 = L1_2(L2_3)
  for L5_6, L6_7 in L2_3(L3_4) do
    L7_8 = string
    L7_8 = L7_8.format
    L7_8 = L7_8("pid:%d", L6_7.pid)
    MpDetection.ScanResource("ems://" .. L7_8)
  end
end
TriggerEMSScan = L0_0
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L0_0 = L0_0("%windir%")
if L0_0 then
  TriggerEMSScan(L0_0 .. "\\regsvr32.exe")
  TriggerEMSScan(L0_0 .. "\\explorer.exe")
end
