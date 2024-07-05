local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
end
if L0_0 and (string.sub(L0_0, 0, 5) == "/bin/" or string.sub(L0_0, 0, 6) == "/sbin/" or string.sub(L0_0, 0, 9) == "/usr/bin/" or string.sub(L0_0, 0, 10) == "/usr/sbin/") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
return mp.INFECTED
