local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
if L1_1 ~= nil then
  for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
    if _FORV_6_.image_path ~= nil and _FORV_6_.ppid ~= nil then
      TrackPidAndTechniqueBM(_FORV_6_.ppid, "T1218", "msdt_pcwdiag_target")
    end
  end
end
return mp.INFECTED
