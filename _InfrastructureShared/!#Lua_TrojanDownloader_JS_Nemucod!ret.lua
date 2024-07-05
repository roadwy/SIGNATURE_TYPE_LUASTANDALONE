local L0_0
L0_0 = 0
if mp.get_mpattribute("SCPT:TrojanDownloader:JS/Nemucod!ret0x0a") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCPT:TrojanDownloader:JS/Nemucod!ret0x0d") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCPT:TrojanDownloader:JS/Nemucod!ret0x2c") then
  L0_0 = L0_0 + 1
end
if L0_0 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
