local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = {}
L1_1[256] = "100"
L1_1[1024] = "400"
L1_1[4096] = "1000"
L1_1[50000] = "50KB"
L1_1[65536] = "10000"
L1_1[262144] = "40000"
L1_1[1048576] = "1M"
L1_1[4194304] = "4M"
L1_1[10485760] = "10M"
L1_1[41943040] = "40M"
L1_1[104857600] = "100M"
L1_1[524288000] = "500M"
L1_1[1073741824] = "1G"
for L5_5, L6_6 in L2_2(L3_3) do
  if L5_5 >= L0_0 then
    mp.set_mpattribute("LUA:FileSizeLE" .. L6_6 .. ".B")
  else
    mp.set_mpattribute("LUA:FileSizeGT" .. L6_6 .. ".B")
  end
end
return L2_2
