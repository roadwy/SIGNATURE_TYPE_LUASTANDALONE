local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 307200000 or L0_0 > 512000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = ":\000\\\000W\000i\000n\000d\000o\000w\000s\000\\\000S\000y\000s\000t\000e\000m\0003\0002\000\\\000s\000v\000c\000h\000o\000s\000t\000.\000e\000x\000e\000\000"
L2_2 = "svchost.pdb"
L3_3 = "RdpCoreTS.pdb"
mp.readprotection(false)
mp.readprotection(true)
if tostring(mp.readfile(8192, 24576)):find(L1_1, 1, true) == nil or tostring(mp.readfile(49152, 90112)):find(L2_2, 1, true) == nil or tostring(mp.readfile(49152, 90112)):find(L3_3, 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
