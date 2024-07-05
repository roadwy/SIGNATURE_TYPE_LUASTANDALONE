local L0_0, L1_1, L2_2
function L0_0(A0_3)
  if string.find(A0_3, "kobdrvapiw64", 1, true) ~= nil then
    return false
  end
  if string.find(A0_3, "dismhost", 1, true) ~= nil then
    return false
  end
  if string.find(A0_3, "tracerpt", 1, true) ~= nil then
    return false
  end
  if string.find(A0_3, "printisolationhost", 1, true) ~= nil then
    return false
  end
  return true
end
is_target = L0_0
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[1].utf8p1)
    L0_0 = L2_2
  end
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[1].utf8p2)
    L1_1 = L2_2
  end
end
if L0_0 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L0_0)
  if L2_2 then
    L2_2 = is_target
    L2_2 = L2_2(L0_0)
    if L2_2 then
      L2_2 = bm
      L2_2 = L2_2.add_related_file
      L2_2(L0_0)
    else
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L1_1)
  if L2_2 then
    L2_2 = is_target
    L2_2 = L2_2(L1_1)
    if L2_2 then
      L2_2 = bm
      L2_2 = L2_2.add_related_file
      L2_2(L1_1)
      L2_2 = MpCommon
      L2_2 = L2_2.AppendPersistContext
      L2_2(L1_1, "MasqSuspCopyTarget", 3600)
      L2_2 = {
        "T1036.003:masquerading_target",
        "T1036.003:defenseevasion_target",
        "T1036.003:MasqSuspCopy.A"
      }
      TrackFileAndTechnique(L1_1, L2_2)
    else
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
