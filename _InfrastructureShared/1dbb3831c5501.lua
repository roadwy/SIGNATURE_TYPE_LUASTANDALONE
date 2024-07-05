local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
end
if L0_0 and sysio.GetPEVersionInfo(L0_0) and sysio.GetPEVersionInfo(L0_0).OriginalFilename == "bootmgr.exe" and (sysio.GetPEVersionInfo(L0_0).ProductVersion == "10.0.19041.1288" or sysio.GetPEVersionInfo(L0_0).ProductVersion == "10.0.19041.1157") then
  return mp.INFECTED
end
return mp.CLEAN
