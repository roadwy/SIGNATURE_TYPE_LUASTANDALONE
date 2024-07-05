local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p1
  end
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
  end
end
if L0_0 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L0_0)
  if L2_2 then
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L2_2(L0_0)
  end
end
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L1_1)
  if L2_2 then
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L2_2(L1_1)
    L2_2 = MpCommon
    L2_2 = L2_2.AppendPersistContext
    L2_2(string.lower(L1_1), "MasqSuspRenameTarget", 3600)
    L2_2 = {
      "T1036.003:masquerading_target",
      "T1036.003:defenseevasion_target",
      "T1036.003:MasqSuspRename.A"
    }
    TrackFileAndTechnique(L1_1, L2_2)
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
