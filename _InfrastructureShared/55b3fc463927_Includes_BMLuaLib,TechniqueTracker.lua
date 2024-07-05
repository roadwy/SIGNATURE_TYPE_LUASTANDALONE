local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = {
  L1_1,
  L2_2,
  L3_3
}
L1_1 = {L2_2, L3_3}
L2_2 = "python"
L3_3 = "/var/lib/waagent"
L2_2 = {L3_3, L4_4}
L3_3 = "/lib/systemd/systemd"
L4_4 = "/lib/systemd/systemd"
L3_3 = {L4_4, L5_5}
L4_4 = "sapstartsrv"
L5_5 = "/usr/sap/"
L1_1 = "remote_file_created_taint"
L2_2, L3_3, L4_4 = nil, nil, nil
L5_5 = this_sigattrlog
L5_5 = L5_5[3]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L2_2 = L5_5.ppid
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L3_3 = L5_5.image_path
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L4_4 = L5_5.utf8p2
end
L5_5 = mp
L5_5 = L5_5.GetParentProcInfo
L5_5 = L5_5()
if L3_3 ~= nil and L5_5 ~= nil then
  if L6_6 ~= nil then
    if not L6_6 then
      if not L6_6 then
        return L6_6
      end
    end
  end
end
if L3_3 ~= nil and L4_4 ~= nil then
  for L9_9, L10_10 in L6_6(L7_7) do
    L11_11 = L10_10[1]
    L12_12 = L10_10[2]
    if string.find(L3_3, L11_11, 1, true) and string.find(L4_4, L12_12, 1, true) then
      return mp.CLEAN
    end
  end
end
if L2_2 ~= nil then
  if not L6_6 then
    L9_9 = 2
    if not L6_6 then
      if L6_6 >= 4 then
        L9_9 = "Persistence"
        L6_6(L7_7, L8_8, L9_9)
        L6_6()
        L6_6()
        return L6_6
      end
    end
  end
end
return L6_6
