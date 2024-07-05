local L0_0, L1_1, L2_2
L0_0 = {}
L0_0.exe = ""
L0_0.cmd = ""
L0_0.bat = ""
L0_0.com = ""
L0_0.pif = ""
L0_0.scr = ""
L1_1 = {}
L1_1.ms = ""
L1_1.cc = ""
L2_2 = nil
if this_sigattrlog[1].matched then
  L2_2 = string.lower(this_sigattrlog[1].utf8p1)
elseif this_sigattrlog[2].matched then
  L2_2 = string.lower(this_sigattrlog[2].utf8p1)
end
if L2_2 ~= nil and L0_0[L2_2:match("([^\\]-([^%.]+))$")] and L1_1[L2_2:match("([^\\]-([^%.]+))$"):sub(1, 2)] then
  return mp.INFECTED
end
return mp.CLEAN
