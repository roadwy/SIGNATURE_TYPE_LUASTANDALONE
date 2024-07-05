local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
if L0_0 then
  if string.match(L0_0, "/%.[^/]+$") then
    TrackPidAndTechniqueBM("BM", "T1003.008", "OSCredentialDumping_mt2023")
    TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
    reportRelatedBmHits()
    return mp.INFECTED
  elseif isTainted(L0_0, "remote_file_chmodexec") then
    TrackPidAndTechniqueBM("BM", "T1003.008", "OSCredentialDumping_mt2023")
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN
