local L0_0
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L0_0 = L0_0("%ALLUSERSPROFILE%")
sysio.StopService("bits")
if Info.OSMajorVersion > 6 then
  sysio.DeleteFile(L0_0 .. "\\Microsoft\\Network\\Downloader\\qmgr.db")
else
  sysio.DeleteFile(L0_0 .. "\\Microsoft\\Network\\Downloader\\qmgr0.db")
  sysio.DeleteFile(L0_0 .. "\\Microsoft\\Network\\Downloader\\qmgr1.db")
end
