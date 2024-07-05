local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
if L0_0 then
  L1_1 = AppendToRollingQueue
  L2_2 = "PoshevinRelatedFiles"
  L1_1(L2_2, L0_0, nil, 5000)
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L2_2 ~= nil then
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    if _FORV_7_.image_path ~= nil and _FORV_7_.ppid ~= nil then
      TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1037", "possible_poshevin_child_a")
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
