local L0_0
L0_0 = {}
L0_0["cttunesvr.exe"] = true
L0_0["inetmgr.exe"] = true
L0_0["migsetup.exe"] = true
L0_0["mmc.exe"] = true
L0_0["oobe.exe"] = true
L0_0["pkgmgr.exe"] = true
L0_0["provisionshare.exe"] = true
L0_0["provisionstorage.exe"] = true
L0_0["spinstall.exe"] = true
L0_0["winsat.exe"] = true
if this_sigattrlog[4].matched and L0_0[string.match(this_sigattrlog[4].p2:lower(), "\\(%w+%.%w+)$")] then
  return mp.INFECTED
end
if this_sigattrlog[1].matched and (L0_0[string.match(this_sigattrlog[1].p1:lower(), "\\(%w+%.%w+)$")] or L0_0[string.match(this_sigattrlog[1].p2:lower(), "\\(%w+%.%w+)$")]) then
  return mp.INFECTED
end
if this_sigattrlog[2].matched and L0_0[string.match(this_sigattrlog[2].p1:lower(), "\\(%w+%.%w+)$")] then
  return mp.INFECTED
end
if this_sigattrlog[3].matched and L0_0[string.match(this_sigattrlog[3].p2:lower(), "\\(%w+%.%w+)$")] then
  return mp.INFECTED
end
return mp.LOWFI
