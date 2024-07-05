local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if _FORV_6_.image_path ~= nil and _FORV_6_.ppid ~= nil then
    TrackPidAndTechniqueBM(_FORV_6_.ppid, "T1021.006", "winrshost_childproc")
  end
end
return mp.CLEAN
