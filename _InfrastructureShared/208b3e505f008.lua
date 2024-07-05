local L0_0
L0_0 = ""
if this_sigattrlog[10].matched and this_sigattrlog[10].utf8p1 ~= nil then
  L0_0 = MpCommon.PathToWin32Path(string.lower(this_sigattrlog[10].utf8p1))
end
if mp.IsKnownFriendlyFile(L0_0, true, false) then
  return mp.CLEAN
end
return mp.INFECTED
