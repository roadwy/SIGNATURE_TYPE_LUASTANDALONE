local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = "remote_file_created_taint"
L1_1 = "queue_pid_taintfactory_a"
L2_2, L3_3, L4_4 = nil, nil, nil
L5_5 = this_sigattrlog
L5_5 = L5_5[2]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[2]
  L2_2 = L5_5.ppid
else
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = this_sigattrlog
    L5_5 = L5_5[3]
    L2_2 = L5_5.ppid
  else
    L5_5 = this_sigattrlog
    L5_5 = L5_5[4]
    L5_5 = L5_5.matched
    if L5_5 then
      L5_5 = this_sigattrlog
      L5_5 = L5_5[4]
      L2_2 = L5_5.ppid
    end
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[5]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[5]
  L3_3 = L5_5.utf8p1
else
  L5_5 = this_sigattrlog
  L5_5 = L5_5[6]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = this_sigattrlog
    L5_5 = L5_5[6]
    L3_3 = L5_5.utf8p1
  else
    L5_5 = this_sigattrlog
    L5_5 = L5_5[7]
    L5_5 = L5_5.matched
    if L5_5 then
      L5_5 = this_sigattrlog
      L5_5 = L5_5[7]
      L3_3 = L5_5.utf8p1
    end
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[8]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[8]
  L4_4 = L5_5.utf8p1
end
if L2_2 ~= nil and L3_3 ~= nil and L4_4 ~= nil then
  L5_5 = isParentPackageManager
  L6_6 = L2_2
  L5_5 = L5_5(L6_6, L7_7)
  if not L5_5 then
    L5_5 = isTainted
    L6_6 = L3_3
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 then
      L5_5 = AppendToRollingQueue
      L6_6 = L1_1
      L5_5(L6_6, L7_7, L8_8, 600)
      L5_5 = taint
      L6_6 = L4_4
      L5_5(L6_6, L7_7, L8_8)
      L5_5 = bm
      L5_5 = L5_5.get_process_relationships
      L6_6 = L2_2
      L6_6 = L5_5(L6_6)
      for _FORV_10_, _FORV_11_ in L7_7(L8_8) do
        bm.add_related_process(_FORV_11_.ppid)
        TrackPidAndTechniqueBM(_FORV_11_.ppid, "T1105", "CommandAndControl")
      end
      return L7_7
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
