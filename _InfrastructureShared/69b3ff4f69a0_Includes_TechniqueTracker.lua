local L0_0, L1_1
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p1)
end
if L0_0 then
  L1_1 = string.match(L0_0, "/([^/]+)$")
  if (sysio.IsFileExists("/bin/" .. L1_1) or sysio.IsFileExists("/sbin/" .. L1_1) or sysio.IsFileExists("/usr/bin/" .. L1_1) or sysio.IsFileExists("/usr/sbin/" .. L1_1)) and string.find(L0_0, "/bin/" .. L1_1, -(5 + string.len(L1_1)), true) == nil then
    TrackPidAndTechniqueBM("BM", "T1036", "Masquerading")
    return mp.INFECTED
  end
end
return mp.CLEAN
