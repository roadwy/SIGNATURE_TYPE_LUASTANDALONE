local L0_0, L1_1
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
  L1_1 = string.lower(this_sigattrlog[4].utf8p2)
  if L0_0:match("\\harddiskvolumeshadowcopy.+\\certutil.exe$") then
    return mp.CLEAN
  end
  if L0_0:match("\\filehistory\\") then
    return mp.CLEAN
  end
  if L1_1:match("programdata\\dell") then
    return mp.CLEAN
  end
  if L0_0 ~= L1_1 and not StringEndsWith(L1_1, "\\certutil.exe") then
    TrackPidAndTechniqueBM(this_sigattrlog[4].ppid, "T1036", "masq_certutil")
    return mp.INFECTED
  end
end
return mp.CLEAN
