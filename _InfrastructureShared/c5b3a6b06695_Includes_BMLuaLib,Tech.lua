local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = "remote_file_created_taint"
L1_1 = "queue_pid_taintfactory_a"
L2_2, L3_3, L4_4, L5_5 = nil, nil, nil, nil
L6_6 = this_sigattrlog
L6_6 = L6_6[2]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L2_2 = L6_6.ppid
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L3_3 = L6_6.utf8p2
else
  L6_6 = this_sigattrlog
  L6_6 = L6_6[3]
  L6_6 = L6_6.matched
  if L6_6 then
    L6_6 = this_sigattrlog
    L6_6 = L6_6[3]
    L2_2 = L6_6.ppid
    L6_6 = this_sigattrlog
    L6_6 = L6_6[3]
    L3_3 = L6_6.utf8p2
  else
    L6_6 = this_sigattrlog
    L6_6 = L6_6[4]
    L6_6 = L6_6.matched
    if L6_6 then
      L6_6 = this_sigattrlog
      L6_6 = L6_6[4]
      L2_2 = L6_6.ppid
      L6_6 = this_sigattrlog
      L6_6 = L6_6[4]
      L3_3 = L6_6.utf8p2
    end
  end
end
if not L3_3 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.GetExecutablesFromCommandLine
L6_6 = L6_6(L7_7)
if L6_6 then
  for L10_10, L11_11 in L7_7(L8_8) do
    if sysio.IsFileExists(L11_11) then
      L4_4 = L11_11
      break
    end
  end
end
if L7_7 then
  L5_5 = L7_7.utf8p1
end
if L2_2 ~= nil and L4_4 ~= nil and L5_5 ~= nil then
  if not L7_7 then
    if L7_7 then
      L7_7(L8_8, L9_9, L10_10, L11_11)
      L7_7(L8_8, L9_9, L10_10)
      for _FORV_12_, _FORV_13_ in L9_9(L10_10) do
        bm.add_related_process(_FORV_13_.ppid)
        TrackPidAndTechniqueBM(_FORV_13_.ppid, "T1105", "CommandAndControl")
      end
      return L9_9
    end
  end
end
return L7_7
