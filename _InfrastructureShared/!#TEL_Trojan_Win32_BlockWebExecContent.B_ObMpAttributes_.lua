local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetScanSource
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.SCANSOURCE_IOAV_WEB
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.IOAVGetDownloadUrl
L1_1 = L1_1()
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(string.lower(L1_1), "https?://([^/]+)/")
if L2_2 == nil or L2_2 == "" then
  return mp.CLEAN
end
if string.find(L2_2, "dropbox%.com") then
end
if string.find(L2_2, "drive%.google%.com") then
end
if true == false then
  return mp.CLEAN
end
return mp.INFECTED
