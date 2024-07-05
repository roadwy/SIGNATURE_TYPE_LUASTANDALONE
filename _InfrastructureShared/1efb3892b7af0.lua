local L0_0, L1_1, L2_2, L3_3
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
L2_2, L3_3 = nil, nil
if this_sigattrlog[4].matched and this_sigattrlog[6].matched then
  L2_2 = string.lower(this_sigattrlog[4].utf8p1)
  L3_3 = string.lower(this_sigattrlog[6].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[7].matched then
  L2_2 = string.lower(this_sigattrlog[5].utf8p1)
  L3_3 = string.lower(this_sigattrlog[7].utf8p2)
end
if L2_2 ~= nil and L3_3 ~= nil and L0_0[L2_2:match("([^\\]-([^%.]+))$")] and L1_1[L2_2:match("([^\\]-([^%.]+))$"):sub(1, 2)] then
  L3_3 = string.match(L3_3, "\\([^\\]+)$")
  if L2_2:match("([^\\]-([^%.]+))$") == L3_3 then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L2_2), 4091961331)
    return mp.INFECTED
  end
end
return mp.CLEAN
