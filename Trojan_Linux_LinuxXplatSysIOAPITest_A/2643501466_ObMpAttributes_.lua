local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_FULL
L0_0 = L0_0(L1_1)
if L0_0 ~= "/tmp/0c02a078-ea6f-4635-b4c5-be81241d7bb9-sysiotestfile-1.txt" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.IsFileExists
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.IsFolderExists
L2_2 = "/tmp"
L1_1 = L1_1(L2_2)
if L1_1 ~= true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.GetFileSize
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 < 10 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = sysio
L2_2 = L2_2.ReadFile
L3_3 = L0_0
L2_2 = L2_2(L3_3, 0, L1_1)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L2_2, "0123456789", 1, true)
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.GetFileAttributes
L3_3 = L3_3(L0_0)
if L3_3 == nil or mp.bitand(L3_3, 61440) ~= 32768 then
  return mp.CLEAN
end
return mp.INFECTED
