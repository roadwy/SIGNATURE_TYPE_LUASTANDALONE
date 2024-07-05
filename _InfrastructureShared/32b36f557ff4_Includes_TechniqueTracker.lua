local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4, A2_5)
  if mp.GetParentProcInfo(A0_3) == nil then
    return
  end
  A0_3 = mp.GetParentProcInfo(A0_3).ppid
  if A0_3 == nil then
    return
  end
  TrackPidAndTechniqueBM(A0_3, A1_4, A2_5)
  return
end
propagateTTParent = L0_0
L0_0, L1_1, L2_2 = nil, nil, nil
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
  L1_1 = this_sigattrlog[1].utf8p2
  L2_2 = this_sigattrlog[1].ppid
end
if not L0_0 or not L1_1 or not L2_2 or not this_sigattrlog[1].image_path or not mp.GetProcessCommandLine(L2_2) then
  return mp.CLEAN
end
if not string.match(L0_0, "T%d%d%d%d") or L1_1 == "INFECTED" then
  return mp.CLEAN
end
if GetTechniquesCountForPid(L2_2) ~= nil and 1 < GetTechniquesCountForPid(L2_2) then
  bm.trigger_sig("SuspiciousMacTTPRel", "Detected")
end
propagateTTParent(L2_2, L0_0, L1_1)
return mp.CLEAN
