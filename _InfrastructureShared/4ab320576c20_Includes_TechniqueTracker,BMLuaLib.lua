if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  TrackPidAndTechniqueBM("BM", "T1027.002", "DefenseEvasionn_SoftwarePacking_mt2023")
  bm.trigger_sig(this_sigattrlog[1].utf8p1, "UPXELFDroppedSelf")
  if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
    bm.trigger_sig(this_sigattrlog[1].utf8p1, "UPXELFDroppedParent", mp.GetParentProcInfo().ppid)
  end
  return mp.INFECTED
end
return mp.CLEAN
