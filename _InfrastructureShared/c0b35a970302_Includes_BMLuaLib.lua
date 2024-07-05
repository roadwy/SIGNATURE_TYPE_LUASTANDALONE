local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
end
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if not isIEXfound(L0_0) then
  return mp.CLEAN
end
if IsSuspPSModule(L0_0) then
  bm.add_related_string("PShellLoader_SA_cmdline", L0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
