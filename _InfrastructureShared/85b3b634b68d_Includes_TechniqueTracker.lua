local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if _FORV_6_.image_path ~= nil and string.find(string.lower(_FORV_6_.image_path), "\\rundll32.exe", 1, true) and mp.bitand(_FORV_6_.reason_ex, bm.RELATIONSHIP_INJECTION) == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(_FORV_6_.ppid, "T1055.002", "processinjection_target")
  end
end
return mp.INFECTED
