local L0_0
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2:lower()
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2:lower()
end
if contains(L0_0, {
  "-exclusionprocess"
}) then
  bm.add_related_string("MpTamperRemoteProc", L0_0, bm.RelatedStringBMReport)
  reportSessionInformation()
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
