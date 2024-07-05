local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[12]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = nil
  if this_sigattrlog[12].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[12].utf8p2
  end
  if L0_0 == nil or L0_0 == "" then
    return mp.CLEAN
  end
  if string.find(L0_0, " -G sudo ", 1, true) or string.find(L0_0, " -G sudo,", 1, true) or string.find(L0_0, " -G%s[%w]+,sudo%s", 1, false) or string.find(L0_0, " -G%s[%w]+,sudo,", 1, false) or string.find(L0_0, " -G%s[%w]+[,%w]+,sudo%s", 1, false) or string.find(L0_0, " -G%s[%w]+[,%w]+,sudo,", 1, false) then
    TrackPidAndTechniqueBM("BM", "T1136", "Persistence_CreateAccount")
    return mp.INFECTED
  end
  return mp.CLEAN
end
L0_0 = TrackPidAndTechniqueBM
L0_0("BM", "T1548.003", "PrivilegeEscalation")
L0_0 = TrackPidAndTechniqueBM
L0_0("BM", "T1078.003", "Persistence")
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
