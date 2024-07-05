local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
  L1_1 = sysio.GetFileSize(L0_0)
  if L1_1 < 1000000 then
    return mp.INFECTED
  end
end
return mp.CLEAN
