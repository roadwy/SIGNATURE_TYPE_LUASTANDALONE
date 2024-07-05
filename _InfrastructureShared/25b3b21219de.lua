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
if (";217.23.8.164;85.17.87.163;46.165.244.105;209.239.112.229;185.6.80.139;184.75.253.146;176.9.245.16;178.250.245.198;217.23.3.113;217.23.8.164;"):find(L2_2, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
