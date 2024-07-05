local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.GetProcessCommandLine(L0_0))
  if L1_1 == nil then
    return mp.CLEAN
  end
  if L1_1.find("ffffffff%s+.force") then
    return mp.CLEAN
  end
  if string.match(L1_1, "conhost%.exe$") or string.match(L1_1, "conhost%.exe[^a-z0-9A-Z]*$") or string.match(L1_1, "%d%d%d%d%d+%-%d%d%d%d%d+%-%d%d%d%d%d+%-%d%d%d%d%d") or string.match(L1_1, " 0xfff") or string.match(L1_1, "0x4") or string.match(L1_1, "--headless") then
    return mp.CLEAN
  end
  TrackPidAndTechnique(L0_0, "T1202", "indirectcmdexec")
  return mp.LOWFI
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
