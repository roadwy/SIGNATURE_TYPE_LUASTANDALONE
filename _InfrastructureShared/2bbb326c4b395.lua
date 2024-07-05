local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = {}
L0_0.ms = ""
L0_0.dx = ""
L1_1, L2_2, L3_3, L4_4 = nil, nil, nil, nil
if this_sigattrlog[2].matched then
  L1_1 = string.lower(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched then
  L1_1 = string.lower(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched then
  L1_1 = string.lower(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched then
  L1_1 = string.lower(this_sigattrlog[5].utf8p1)
elseif this_sigattrlog[6].matched then
  L1_1 = string.lower(this_sigattrlog[6].utf8p1)
elseif this_sigattrlog[7].matched then
  L1_1 = string.lower(this_sigattrlog[7].utf8p1)
end
if this_sigattrlog[8].matched then
  L3_3 = string.lower(this_sigattrlog[8].utf8p2)
elseif this_sigattrlog[9].matched then
  L3_3 = string.lower(this_sigattrlog[9].utf8p2)
end
if L1_1 ~= nil and L3_3 ~= nil then
  L2_2 = string.match(L1_1, "\\([^\\]+)$")
  L4_4 = L2_2:sub(1, 2)
  if L0_0[L4_4] then
    L3_3 = string.match(L3_3, "\\([^\\]+)$")
    if L2_2 == L3_3 then
      mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L1_1), 501759711)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
