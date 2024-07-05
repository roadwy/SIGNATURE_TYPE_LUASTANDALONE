local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if L0_0 and (L0_0:sub(1, 2) == "\\\\" or L0_0:sub(1, 3) == "\"\\\\" or L0_0:sub(1, 3) == "'\\\\") and IsHostAttackServer(L0_0) then
  TrackPidAndTechniqueBM("BM", "T1057", "xfer_to_attackerserver_a")
  return mp.INFECTED
end
return mp.CLEAN
