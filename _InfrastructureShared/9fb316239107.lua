local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 <= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetExecutablesFromCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = false
for L6_6, L7_7 in L3_3(L4_4) do
  if string.find(L7_7, "\\program files", 1, true) == nil and sysio.IsFileExists(L7_7) and MpCommon.QueryPersistContext(L7_7, "RemoteAccessTool") then
    bm.add_threat_file(L7_7)
    L2_2 = true
  end
end
if L2_2 == false then
  return L3_3
end
return L3_3
