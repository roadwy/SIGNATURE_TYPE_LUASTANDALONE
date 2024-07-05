local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = nil
  if this_sigattrlog[7].utf8p1 == nil then
    return mp.CLEAN
  end
  L0_0 = this_sigattrlog[7].utf8p1
  if L0_0 then
    if string.match(L0_0, "/%.[^/]+$") then
      TrackPidAndTechniqueBM("BM", "T1105", "CommandandControl_IngressToolTransfer_mt2023")
      reportRelatedBmHits()
      return mp.INFECTED
    else
      return mp.CLEAN
    end
  end
end
L0_0 = TrackPidAndTechniqueBM
L0_0("BM", "T1105", "CommandAndControl_IngressToolTransfer_mt2023")
L0_0 = reportRelatedBmHits
L0_0()
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
