local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
L1_1, L2_2 = nil, nil
function L3_3()
  TrackPidAndTechniqueBM("BM", "T1040", "network-sniffing")
end
L1_1 = string.find(L0_0, "/private/", 1, true)
L2_2 = string.find(L0_0, "/private/var/folders/", 1, true)
if L1_1 == 1 and L2_2 == nil then
  L3_3()
  return mp.INFECTED
end
L1_1 = string.find(L0_0, "/users/", 1, true)
L2_2 = string.find(L0_0, "/library/application support/", 7, true)
if L1_1 == 1 and L2_2 ~= nil then
  L3_3()
  return mp.INFECTED
end
return mp.CLEAN
