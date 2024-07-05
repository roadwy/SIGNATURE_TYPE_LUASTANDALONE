local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p1
    L1_1 = L1_1.lower
    L1_1 = L1_1(L1_1)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L1_1 = L1_1.utf8p1
      L1_1 = L1_1.lower
      L1_1 = L1_1(L1_1)
      L0_0 = L1_1
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L1_1 = L1_1.utf8p1
        L1_1 = L1_1.lower
        L1_1 = L1_1(L1_1)
        L0_0 = L1_1
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p2
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L1_1 = L1_1.utf8p1
          L1_1 = L1_1.lower
          L1_1 = L1_1(L1_1)
          L0_0 = L1_1
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.utf8p2
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[5]
            L1_1 = L1_1.utf8p1
            L1_1 = L1_1.lower
            L1_1 = L1_1(L1_1)
            L0_0 = L1_1
          end
        end
      end
    end
  end
end
L1_1 = contains
L1_1 = L1_1(L0_0, MpCommon.ExpandEnvironmentVariables("%systemdrive%"))
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  "program files",
  "\\rclone\\",
  "\\rclone-v",
  "cmmagent.exe",
  "cymulateagent.exe"
}
if not contains(L0_0, L1_1) then
  TrackPidAndTechniqueBM("BM", "T1567", "ToolExfilOverWeb")
  reportRelatedBmHits()
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
