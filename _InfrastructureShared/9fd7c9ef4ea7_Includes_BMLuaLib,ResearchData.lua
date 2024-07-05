local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = mp
L2_2 = L2_2.GetScannedPPID
L2_2 = L2_2()
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 then
  L4_4 = #L3_3
elseif L4_4 <= 10 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L3_3
L6_6 = "or8ixLi90Mf%s+\"?%s*([A-Za-z0-9/%+=]+)"
L4_4 = L4_4(L5_5, L6_6)
L1_1 = L4_4
if L1_1 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.Base64Decode
L5_5 = L1_1
L4_4 = L4_4(L5_5)
L0_0 = L4_4
if L0_0 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L5_5 = L0_0
L4_4 = L0_0.lower
L4_4 = L4_4(L5_5)
L0_0 = L4_4
L4_4 = {
  L5_5,
  L6_6,
  L7_7,
  ":\\\\perflogs",
  ":\\\\windows\\\\help",
  ":\\\\windows\\\\debug",
  ":\\\\windows\\\\tapi",
  ":\\\\windows\\\\temp",
  ":\\\\intel"
}
L5_5 = ":\\\\programdata\\dell"
L6_6 = ":\\\\programdata\\hp"
L7_7 = ":\\\\programdata\\microsoft\\windows\\start menu\\programs\\startup"
L5_5 = {L6_6}
L6_6 = ":\\\\programdata$"
L6_6 = string
L6_6 = L6_6.match
L7_7 = L0_0
L6_6 = L6_6(L7_7, "\"command\":\"(%w+)\",")
L7_7 = string
L7_7 = L7_7.match
L7_7 = L7_7(L0_0, "\"path\":\"computer\\\\(.*)\",\"name\"")
if L6_6 == nil or L6_6 == "" then
  return mp.CLEAN
end
if L7_7 == nil or L7_7 == "" then
  return mp.CLEAN
end
if contains(L6_6, {"upload", "download"}) and (contains(L7_7, L4_4) or contains(L7_7, L5_5, false)) then
  set_research_data("atera_susp", L0_0, false)
  return mp.INFECTED
end
return mp.CLEAN
