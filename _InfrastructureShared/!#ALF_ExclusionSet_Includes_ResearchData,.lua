local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Regkeyvalue" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L2_2 = L2_2("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
if L2_2 and sysio.RegEnumValues(L2_2) then
  L1_1.Extensions_Perf_Count = #sysio.RegEnumValues(L2_2)
end
L2_2 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
if L2_2 and sysio.RegEnumValues(L2_2) then
  L1_1.Extensions_Policies_Count = #sysio.RegEnumValues(L2_2)
end
L2_2 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if L2_2 and sysio.RegEnumValues(L2_2) then
  L1_1.Paths_Perf_Count = #sysio.RegEnumValues(L2_2)
end
L2_2 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
if L2_2 and sysio.RegEnumValues(L2_2) then
  L1_1.Paths_Policies_Count = #sysio.RegEnumValues(L2_2)
end
L2_2 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Processes")
if L2_2 and sysio.RegEnumValues(L2_2) then
  L1_1.Processes_Perf_Count = #sysio.RegEnumValues(L2_2)
end
L2_2 = sysio.RegOpenKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Processes")
if L2_2 and sysio.RegEnumValues(L2_2) then
  L1_1.Processes_Policies_Count = #sysio.RegEnumValues(L2_2)
end
set_research_data("ExclusionsCount", MpCommon.Base64Encode(safeJsonSerialize(L1_1)), false)
return mp.INFECTED
