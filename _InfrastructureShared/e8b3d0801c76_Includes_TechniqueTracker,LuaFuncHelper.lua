local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "/s[%s]?$"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.utf8p1
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L1_1 = L2_2.utf8p1
  end
end
if L1_1 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L2_2 = AppendToRollingQueue
  L3_3 = "PoshevinRelatedFiles"
  L4_4 = L1_1
  L2_2(L3_3, L4_4, nil, 5000)
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = bm
L3_3 = L3_3.get_imagepath
L4_4 = L3_3()
L2_2 = L2_2(L3_3, L4_4, L3_3())
if L2_2 then
  L3_3 = AppendToRollingQueue
  L4_4 = "PoshevinRelatedFiles"
  L3_3(L4_4, L2_2, nil, 5000)
end
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
if L4_4 ~= nil then
  for _FORV_8_, _FORV_9_ in ipairs(L4_4) do
    if _FORV_9_.image_path ~= nil and _FORV_9_.ppid ~= nil then
      TrackPidAndTechniqueBM(_FORV_9_.ppid, "T1037", "possible_poshevin_child_b")
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
