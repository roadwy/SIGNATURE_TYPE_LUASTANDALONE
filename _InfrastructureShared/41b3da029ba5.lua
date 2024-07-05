local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "-ap \""
  L4_4 = 1
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L2_2 = L1_1
    L1_1 = L1_1.match
    L3_3 = "-ap \"([^\"]+)\""
    L1_1 = L1_1(L2_2, L3_3)
    L0_0 = L1_1
  end
else
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  if L1_1 ~= nil then
    L2_2 = L1_1.command_line
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1.command_line
      L2_2 = L2_2(L3_3)
      L3_3 = L2_2
      L2_2 = L2_2.match
      L4_4 = "-ap \"([^\"]+)\""
      L2_2 = L2_2(L3_3, L4_4)
      L0_0 = L2_2
    end
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L2_2 = "%windir%\\system32\\inetsrv\\config\\applicationHost.config"
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetIisInstallPaths
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4 = "["
for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
  if _FORV_9_.PoolName ~= nil and _FORV_9_.PoolName ~= "" and _FORV_9_.Path ~= nil and _FORV_9_.Path ~= "" and string.lower(_FORV_9_.PoolName) == L0_0 then
    L4_4 = L4_4 .. _FORV_9_.Path .. "|"
    L3_3 = true
  end
end
if this_sigattrlog[2].matched then
  if L5_5 ~= nil then
    bm.add_related_string("IIS_InMemoryLoadBlocked", L5_5, bm.RelatedStringBMReport)
  end
elseif this_sigattrlog[3].matched then
  if L6_6 ~= nil then
    bm.add_related_string("IIS_InMemoryLoadDHA", L6_6, bm.RelatedStringBMReport)
  end
end
if L3_3 and L5_5 then
  L4_4 = L4_4 .. "]"
  bm.add_related_string("webshellpaths", L4_4, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
