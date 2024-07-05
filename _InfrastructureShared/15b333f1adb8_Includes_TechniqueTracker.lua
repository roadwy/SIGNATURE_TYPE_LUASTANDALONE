local L0_0, L1_1, L2_2, L3_3
L0_0 = false
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = bm
    L2_2 = L2_2.get_process_relationships
    L3_3 = L2_2()
    if L3_3 ~= nil then
      for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
        if _FORV_8_.image_path ~= nil and _FORV_8_.ppid ~= nil then
          TrackPidAndTechniqueBM(_FORV_8_.ppid, "T1548.002", "uac_bypass_trg")
          L0_0 = true
        end
      end
    end
  end
end
if L0_0 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
