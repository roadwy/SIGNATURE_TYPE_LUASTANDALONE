local L0_0
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0(false)
if L0_0 ~= nil then
  L0_0 = mp
  L0_0 = L0_0.IsTrustedFile
  L0_0 = L0_0(false)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.IOAVGetDownloadBrowser
    L0_0 = L0_0()
    if L0_0 ~= nil then
      L0_0 = string.lower(L0_0)
      if L0_0 == "utorrent.exe" or L0_0 == "bittorrent.exe" then
        mp.set_mpattribute("Lua:InvalidSigningPETopLevelIOAVuTorrent")
      else
        mp.set_mpattribute("Lua:InvalidSigningPETopLevelIOAV")
        mp.set_mpattribute("MpNonCachedLowfi")
      end
    else
      mp.set_mpattribute("Lua:InvalidSigningPETopLevelIOAV")
      mp.set_mpattribute("MpNonCachedLowfi")
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
