local L0_0
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L0_0 = L0_0("%windir%\\system32\\LogonUI.exe")
if sysio.GetProcessFromFileName(L0_0) == nil or #sysio.GetProcessFromFileName(L0_0) == 0 then
  return mp.CLEAN
end
return mp.INFECTED
