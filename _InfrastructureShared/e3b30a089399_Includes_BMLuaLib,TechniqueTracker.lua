local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[6].utf8p2)
end
if L0_0 ~= nil and this_sigattrlog[1].matched and (string.find(L0_0, "mkinitramfs ", 1, true) or string.find(L0_0, "u-boot.imx", 1, true) or string.find(L0_0, ".iso ", 1, true) or string.find(L0_0, ".img ", 1, true)) then
  return mp.CLEAN
end
reportRelatedBmHits()
addRelatedProcess()
TrackPidAndTechniqueBM("BM", "T1561.001", "Impact_DiskWiper")
return mp.INFECTED
