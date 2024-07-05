local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILENAME
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0
L4_4 = -3
L6_6 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.lower
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L0_0
L5_5 = -4
L6_6 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L3_3(L4_4, L5_5))
if L1_1 ~= ".js" and L2_2 ~= ".vbs" and L2_2 ~= ".wsf" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
L3_3 = L3_3(L4_4)
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L3_3 = L4_4
if L3_3 ~= "wscript.exe" and L3_3 ~= "cscript.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilename
L5_5 = mp
L5_5 = L5_5.bitor
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_FULL
L6_6 = L5_5(L6_6, mp.FILEPATH_QUERY_LOWERCASE)
L4_4 = L4_4(L5_5, L6_6, L5_5(L6_6, mp.FILEPATH_QUERY_LOWERCASE))
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L4_4
L5_5 = L5_5(L6_6, "\\appdata\\", 1, true)
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.match
L6_6 = L4_4
L6_6 = L5_5(L6_6, "\\([^\\]+)\\([^\\]+%.js)$")
if L5_5 == nil or L5_5 == "" or L6_6 == nil or L6_6 == "" then
  return mp.CLEAN
end
if string.find(L5_5, ".zip", 1, true) and (string.find(L5_5, "update", 1, true) or string.find(L5_5, "install", 1, true) or string.find(L5_5, "version", 1, true) or string.find(L5_5, "order", 1, true)) and (string.find(L6_6, "update", 1, true) or string.find(L6_6, "install", 1, true) or string.find(L6_6, "version", 1, true) or string.find(L6_6, "order", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
