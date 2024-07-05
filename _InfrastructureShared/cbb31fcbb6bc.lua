local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
end
if L0_0 ~= nil and string.find(L0_0, "\\wwwroot\\", 1, true) then
  mp.ReportLowfi(L0_0, 3277719387)
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
