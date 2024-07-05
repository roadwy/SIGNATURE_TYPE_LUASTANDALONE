local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
if L1_1 then
  L0_0 = L1_1
elseif L1_1 then
  L0_0 = L1_1
end
if L0_0 ~= nil then
  for L4_4, L5_5 in L1_1(L2_2) do
    if string.find(L5_5, "/tmp/", 1, true) or string.find(L5_5, "/var/tmp/", 1, true) or string.find(L5_5, "/var/mail/", 1, true) or string.find(L5_5, "/var/spool/mail/", 1, true) or string.find(L5_5, "/var/lock/", 1, true) then
      TrackPidAndTechniqueBM("BM", "T1222", "DefenseEvasion")
      return mp.INFECTED
    end
  end
end
return L1_1
