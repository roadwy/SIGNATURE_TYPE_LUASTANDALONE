local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_HIGH_RID
if L1_1 >= L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\windowsapps\\"
L2_2 = L2_2(L3_3, L4_4, 1, true)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\appdata\\local\\packages\\"
L2_2 = L2_2(L3_3, L4_4, 1, true)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.ContextualExpandEnvironmentVariables
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p2
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = nil
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L2_2, "/j[%s]+\"")
if L4_4 ~= nil then
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L2_2, "/j[%s]+(\"[^\"]+\") ")
  L3_3 = L4_4
else
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L2_2, "/j[%s]+([%S]+) ")
  L3_3 = L4_4
end
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L3_3, "\\appdata\\local\\packages\\", 1, true)
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
if string.sub(L2_2, -1) == "\"" then
  L4_4 = string.match(L2_2, " (\"[^\"]+\")$")
else
  L4_4 = string.match(L2_2, " (%S+)$")
end
if L4_4 == nil then
  return mp.CLEAN
end
if string.find(L4_4, "\\appdata\\local\\packages\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
