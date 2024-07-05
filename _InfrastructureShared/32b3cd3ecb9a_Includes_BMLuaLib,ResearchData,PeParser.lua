local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  return mp.CLEAN
end
L0_0 = MpCommon.PathToWin32Path(L0_0)
if not sysio.GetPEVersionInfo(L0_0) or not sysio.GetPEVersionInfo(L0_0).OriginalFilename then
  return mp.CLEAN
end
if string.lower(sysio.GetPEVersionInfo(L0_0).OriginalFilename) ~= "werfaultsecure.exe" then
  return mp.CLEAN
end
if not sysio.GetPEFixedVersionInfo(L0_0) then
  return mp.CLEAN
end
if crypto.shr64(sysio.GetPEFixedVersionInfo(L0_0).FileVersion, 48) >= 10 then
  return mp.CLEAN
end
bm.add_related_string("OriginalFileName_PeParser", Version_to_str(sysio.GetPEFixedVersionInfo(L0_0).FileVersion), bm.RelatedStringBMReport)
return mp.INFECTED
