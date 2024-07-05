local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_UNKNOWN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
    if L0_0 ~= L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.match
L2_2 = L2_2(L3_3, "^[0-9a-fA-F]+")
if L2_2 ~= nil then
  L3_3 = #L2_2
elseif L3_3 < 31 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if L3_3 == nil or #L3_3 < 5 then
  return mp.CLEAN
end
if string.find(L3_3, "/home/", 1, true) == 1 or string.find(L3_3, "/users/", 1, true) == 1 or string.find(L3_3, "/tmp", -4, true) or string.find(L3_3, "/tmp/", 1, true) then
  if string.find(L3_3, "/dir_afs/", 1, true) and (string.find(L3_3, "/mnt_ss_primary", 1, true) or string.find(L3_3, "/mnt_ss_secondary", 1, true) or string.find(L3_3, "/download_ss_scanpath", 1, true)) then
    return mp.CLEAN
  end
  if not IsExcludedForXplatHeuristicTrigger(L3_3, L1_1) then
    return mp.INFECTED
  end
end
return mp.CLEAN
