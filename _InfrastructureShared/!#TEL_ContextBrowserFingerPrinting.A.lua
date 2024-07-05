local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_PROCESSNAME))
if L0_0 ~= "iexplore.exe" and L0_0 ~= "microsoftedgecp.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
if L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "bitdefender", 1, true) or string.find(L1_1, "eset", 1, true) or string.find(L1_1, "ffdec", 1, true) or string.find(L1_1, "fiddler", 1, true) or string.find(L1_1, "oracle", 1, true) or string.find(L1_1, "vmware", 1, true) or string.find(L1_1, "wireshark", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
