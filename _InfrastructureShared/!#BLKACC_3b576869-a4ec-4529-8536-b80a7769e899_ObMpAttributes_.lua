local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "3b576869-a4ec-4529-8536-b80a7769e899"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = false
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L1_1 ~= nil and L1_1 ~= "" then
  L1_1 = string.lower(L1_1)
  if #L1_1 > 10 and string.find(L1_1, "^memscanvfz") == nil or #L1_1 <= 10 then
    if #L1_1 > 7 and string.find(L1_1, "^\\device\\") ~= nil then
      L1_1 = string.lower(MpCommon.PathToWin32Path(L1_1))
    end
    if sysio.IsFileExists(L1_1) then
      L0_0 = true
    end
  end
end
if L0_0 == false then
  L1_1 = mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if L1_1 ~= nil and L1_1 ~= "" and (#L1_1 > 10 and string.find(L1_1, "^memscanvfz") == nil or #L1_1 <= 10) then
    if #L1_1 > 7 and string.find(L1_1, "^\\device\\") ~= nil then
      L1_1 = string.lower(MpCommon.PathToWin32Path(L1_1))
    end
    if sysio.IsFileExists(L1_1) then
      L0_0 = true
    end
  end
end
if L0_0 and mp.IsPathExcludedForHipsRule(L1_1, "3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
return mp.INFECTED
