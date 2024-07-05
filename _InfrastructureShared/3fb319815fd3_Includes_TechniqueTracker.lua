local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
if L1_1 then
  L0_0 = L1_1
elseif L1_1 then
  L0_0 = L1_1
end
if L0_0 ~= nil then
  for L4_4, L5_5 in L1_1(L2_2) do
    if string.find(L5_5, ".json", -5, true) or string.find(L5_5, ".yaml", -5, true) or string.find(L5_5, ".xml", -4, true) or string.find(L5_5, ".jpg", -4, true) or string.find(L5_5, ".gz", -3, true) or string.find(L5_5, "/etc/", 1, true) or string.find(L5_5, "/boot/grub/", 1, true) or string.find(L5_5, "/dev/shm/", 1, true) or string.find(L5_5, "/var/run/", 1, true) then
      if sysio.IsFileExists(L5_5) then
        bm.add_related_file(L5_5)
      end
      TrackPidAndTechniqueBM("BM", "T1222", "DefenseEvasion")
      return mp.INFECTED
    end
  end
end
return L1_1
