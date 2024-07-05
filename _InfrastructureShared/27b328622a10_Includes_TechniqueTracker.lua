local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = true
L2_2, L3_3 = nil, nil
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L0_0 = L4_4.utf8p2
end
if L0_0 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/tmp/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/var/tmp/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/var/mail/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/var/lock/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/home/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/root/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/dev/shm/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "/var/spool/mail/"
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
  if L2_2 ~= nil and L3_3 ~= nil then
    L1_1 = false
  end
end
if L1_1 == false then
  L4_4 = bm
  L4_4 = L4_4.get_current_process_startup_info
  L4_4 = L4_4()
  L5_5 = bm
  L5_5 = L5_5.get_process_relationships
  L6_6 = L4_4.ppid
  L6_6 = L5_5(L6_6)
  for _FORV_10_, _FORV_11_ in L7_7(L8_8) do
    bm.add_related_process(_FORV_11_.ppid)
    TrackPidAndTechniqueBM(_FORV_11_.ppid, "T1547.006", "Persistence")
  end
  return L7_7
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
