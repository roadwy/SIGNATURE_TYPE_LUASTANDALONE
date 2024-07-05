local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
end
if L0_0:sub(1, 2) == "\\\\" or L0_0:sub(1, 3) == "\"\\\\" or L0_0:sub(1, 3) == "'\\\\" then
  if L0_0:find("\\sysvol", 1, true) or L0_0:find("\\netlogon", 1, true) or L0_0:find("\\ccm", 1, true) or L0_0:find("\\sccm", 1, true) then
    return mp.CLEAN
  end
  if IsHostAttackServer(L0_0) then
    bm_AddRelatedFileFromCommandLine(this_sigattrlog[1].utf8p2, nil, nil, 6)
    TrackPidAndTechniqueBM(this_sigattrlog[1].ppid, "T1057", "xfer_from_attackerserver_b")
    return mp.INFECTED
  end
end
return mp.CLEAN
