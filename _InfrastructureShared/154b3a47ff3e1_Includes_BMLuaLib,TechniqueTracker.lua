local L0_0
if bm.GetSignatureMatchDuration() > 600000000 then
  return mp.CLEAN
end
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
end
if not L0_0 or L0_0 == "" or L0_0 ~= this_sigattrlog[2].utf8p1 or L0_0 ~= this_sigattrlog[5].utf8p1 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1190", "InitialAccess_ElfFileDrop")
return mp.INFECTED
