local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "officeclicktorun.exe"
  L1_1 = L1_1(L2_2, L3_3, 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "monitoringhost.exe"
    L1_1 = L1_1(L2_2, L3_3, 1, true)
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L1_1 = L3_3.utf8p1
  end
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.utf8p2
  end
end
if L1_1 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.IsFileExists
  L3_3 = L3_3(L1_1)
  if L3_3 then
    L3_3 = bm
    L3_3 = L3_3.add_related_file
    L3_3(L1_1)
  end
end
if L2_2 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.IsFileExists
  L3_3 = L3_3(L2_2)
  if L3_3 then
    L3_3 = bm
    L3_3 = L3_3.add_related_file
    L3_3(L2_2)
    L3_3 = MpCommon
    L3_3 = L3_3.AppendPersistContext
    L3_3(string.lower(L2_2), "MasqSuspRenameTarget", 3600)
    L3_3 = {
      "T1036.003:masquerading_target",
      "T1036.003:defenseevasion_target",
      "T1036.003:MasqSuspRename.D"
    }
    TrackFileAndTechnique(L2_2, L3_3)
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
