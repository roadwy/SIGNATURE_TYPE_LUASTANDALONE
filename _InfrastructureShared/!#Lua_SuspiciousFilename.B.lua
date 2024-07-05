local L0_0, L1_1
function L0_0(A0_2)
  return string.lower(A0_2) == "calc.exe" or string.lower(A0_2) == "cmd.exe" or string.lower(A0_2) == "conhost.exe" or string.lower(A0_2) == "csrss.exe" or string.lower(A0_2) == "dllhost.exe" or string.lower(A0_2) == "explorer.exe" or string.lower(A0_2) == "iexplore.exe" or string.lower(A0_2) == "lsass.exe" or string.lower(A0_2) == "msiexec.exe" or string.lower(A0_2) == "msnmsgr.exe" or string.lower(A0_2) == "msmpeng.exe" or string.lower(A0_2) == "notepad.exe" or string.lower(A0_2) == "rundll32.exe" or string.lower(A0_2) == "server.exe" or string.lower(A0_2) == "services.exe" or string.lower(A0_2) == "smss.exe" or string.lower(A0_2) == "svchost.exe" or string.lower(A0_2) == "system.exe" or string.lower(A0_2) == "taskhost.exe" or string.lower(A0_2) == "acrord32info.exe" or string.lower(A0_2) == "wininit.exe" or string.lower(A0_2) == "winlogon.exe"
end
is_suspicious_filename = L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if (string.sub(L1_1, -17) == "\\application data" or string.sub(L1_1, -16) == "\\appdata\\roaming") and is_suspicious_filename(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) then
    mp.set_mpattribute("Lua:SuspiciousFilenameAppdata.A")
    return mp.INFECTED
  end
  if string.sub(L1_1, -28) == "\\start menu\\programs\\startup" and is_suspicious_filename(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) then
    mp.set_mpattribute("Lua:SuspiciousFilenameStartup.A")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
