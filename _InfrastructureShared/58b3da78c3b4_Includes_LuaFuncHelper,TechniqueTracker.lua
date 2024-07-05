local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
  L1_1 = string.lower(this_sigattrlog[1].utf8p2)
  if L0_0 ~= L1_1 and not StringEndsWith(L1_1, "\\certutil.exe") then
    if sysio.IsFileExists(L1_1) then
      bm.add_threat_file(L1_1)
    end
    TrackPidAndTechniqueBM(this_sigattrlog[1].ppid, "T1036", "masq_certutil")
    return mp.INFECTED
  end
end
return mp.CLEAN
