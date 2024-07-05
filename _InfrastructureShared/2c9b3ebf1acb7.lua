local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
end
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
end
if this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p2
end
if this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p2
end
if not L0_0 then
  return mp.CLEAN
end
if sysio.CommandLineScan(L0_0, 0) then
  return mp.INFECTED
end
return mp.CLEAN
