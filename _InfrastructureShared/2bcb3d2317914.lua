local L0_0, L1_1, L2_2
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p1
elseif this_sigattrlog[10].matched then
  L0_0 = this_sigattrlog[10].utf8p1
end
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if this_sigattrlog[11].matched then
  L2_2 = string.lower(this_sigattrlog[11].utf8p2)
end
if L0_0 ~= nil and L2_2 ~= nil then
  L1_1 = string.match(L0_0, "\\([^\\]+)$")
  if L1_1:sub(1, 2) == "ms" then
    L2_2 = string.match(L2_2, "\\([^\\]+)$")
    if L1_1 == L2_2 then
      mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L0_0), 4199551960)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
