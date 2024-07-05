local L0_0, L1_1
L0_0 = ""
L1_1 = ""
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].utf8p2
end
if this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].utf8p2
end
if this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].utf8p2
end
if this_sigattrlog[5].matched then
  L1_1 = this_sigattrlog[5].utf8p2
end
if L0_0 ~= "" and (string.find(L0_0, " -size ", 1, true) or string.find(L0_0, " -p ", 1, true) or string.find(L0_0, "-m local", 1, true) or string.find(L0_0, "-m net", 1, true) or string.find(L0_0, "-m all", 1, true) or string.find(L0_0, "regsvr32.exe /s", 1, true)) then
  return mp.INFECTED
end
if L1_1 ~= "" and string.find(L1_1, "regsvr32.exe /s", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
