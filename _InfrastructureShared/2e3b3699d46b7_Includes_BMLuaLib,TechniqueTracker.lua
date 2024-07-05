local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and IsExcludedByImagePath(L0_0) then
  return mp.CLEAN
end
if 50000000 < bm.GetSignatureMatchDuration() then
  return mp.CLEAN
end
addRelatedProcess()
reportRelatedBmHits()
TrackPidAndTechniqueBM("BM", "T1068", "exploit-privesc")
return mp.INFECTED
