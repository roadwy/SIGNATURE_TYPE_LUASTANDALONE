local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_connection_string
L0_0 = L0_0()
L1_1 = L0_0
L0_0 = L0_0.find
L2_2 = "DestIp=(.-;)"
L2_2 = L0_0(L1_1, L2_2)
if L2_2 == nil then
  return mp.CLEAN
end
L2_2 = ";" .. L2_2
if (";91.200.85.81;109.95.210.101;"):find(L2_2, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
