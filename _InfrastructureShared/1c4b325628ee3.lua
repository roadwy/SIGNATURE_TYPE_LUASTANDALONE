local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[1]
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[2]
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L0_0 = L1_1[3]
    else
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L1_1 = L1_1("%WINDIR%")
if not L1_1 then
  return mp.CLEAN
end
if not sysio.GetFileFsVolumeInformation(L1_1) then
  return mp.CLEAN
end
if L0_0.utf8p1:sub(-8) == string.format("%x", sysio.GetFileFsVolumeInformation(L1_1).VolumeSerialNumber) then
  return mp.INFECTED
end
return mp.CLEAN
