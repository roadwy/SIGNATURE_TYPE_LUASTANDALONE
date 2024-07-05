local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "MpIsPowerShellAMSIScan"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 1
L2_2 = L0_0.match_offset
L2_2 = L2_2 + 1
L2_2 = L2_2 + 512
if not tostring(L0_0.is_header and headerpage or footerpage):sub(L1_1, L2_2):lower():match("disable%-windowsoptionalfeature") or not tostring(L0_0.is_header and headerpage or footerpage):sub(L1_1, L2_2):lower():match("windows%-defender") then
  return mp.CLEAN
end
if tostring(L0_0.is_header and headerpage or footerpage):sub(L1_1, L2_2):lower():match("windows%-defender%-applicationguard") then
  return mp.CLEAN
end
if isTamperProtectionOn() then
  return mp.INFECTED
end
if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  set_research_data("AggressivePeTrigger", "true", false)
end
if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 6) then
  set_research_data("E5EmergencyAntiTampering", "true", false)
end
return mp.LOWFI
