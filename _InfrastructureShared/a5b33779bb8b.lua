local L0_0, L1_1, L2_2
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
end
if this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
end
if this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
end
if this_sigattrlog[6].matched then
  L0_0 = string.lower(this_sigattrlog[6].utf8p2)
end
if this_sigattrlog[7].matched then
  L0_0 = string.lower(this_sigattrlog[7].utf8p2)
end
if this_sigattrlog[8].matched then
  L0_0 = string.lower(this_sigattrlog[8].utf8p2)
end
if L0_0 ~= nil and string.find(L0_0, "\" ..") then
  L1_1 = string.gsub(L0_0, " ..", "")
  L2_2 = string.gsub(L1_1, "\"", "")
  mp.ReportLowfi(L1_1, 138103733)
  mp.ReportLowfi(L2_2, 138103733)
  return mp.INFECTED
end
return mp.INFECTED
