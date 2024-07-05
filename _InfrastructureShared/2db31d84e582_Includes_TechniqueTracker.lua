local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0:find("tel:", 1, true) or L0_0:find("alf:acse.", 1, true) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "TCmdLowfi", "CmdLowfiParent")
return mp.INFECTED
