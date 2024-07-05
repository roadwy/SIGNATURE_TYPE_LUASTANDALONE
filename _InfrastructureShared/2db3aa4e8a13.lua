local L0_0
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L0_0 = L0_0("%windir%\\system32\\LogonUI.exe")
if sysio.GetProcessFromFileName(L0_0) ~= nil and #sysio.GetProcessFromFileName(L0_0) >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
