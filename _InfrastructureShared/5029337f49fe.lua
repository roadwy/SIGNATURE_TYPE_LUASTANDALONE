local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = false
L1_1 = nil
L2_2 = ""
L3_3 = mp
L3_3 = L3_3.GetBruteMatchData
L3_3 = L3_3()
L4_4 = L3_3.match_offset
L4_4 = L4_4 + 1
L5_5 = L3_3.match_offset
L5_5 = L5_5 + 1
L5_5 = L5_5 + 200
if L3_3.is_header then
  L2_2 = tostring(headerpage):sub(L4_4, L5_5):lower()
else
  L2_2 = tostring(footerpage):sub(L4_4, L5_5):lower()
end
L1_1 = L2_2:match("%(gi ([^%)]*)%).FullName;")
if L1_1 == nil then
  L1_1 = L2_2:match("%(get%-item ([^%)]*)%).FullName;")
  if L1_1 == nil then
    L1_1 = L2_2:match("%.gacinstall%([\"']([^%)]*)[\"']")
  end
end
if not L1_1 then
  return mp.CLEAN
end
if string.find(L1_1, ".dll", -4, true) == nil then
  return mp.CLEAN
end
if sysio.IsFileExists(L1_1) and not mp.IsKnownFriendlyFile(L1_1, true, false) then
  mp.ReportLowfi(L1_1, 2494279482)
  L0_0 = true
end
if L0_0 then
  return mp.INFECTED
end
return mp.CLEAN
