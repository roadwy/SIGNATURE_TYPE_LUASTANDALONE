local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 > 1024 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L2_2 = L2_2(L3_3, "(QQBkAGQALQBNAHAAUAByAGUAZgBlAHIAZ[a-zA-Z0-9%+/]+=-)")
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.Base64Decode
L3_3 = L3_3(L2_2)
if L3_3 == nil then
  return mp.CLEAN
end
L3_3 = string.gsub(L3_3, "%z", "")
L3_3 = string.lower(string.gsub(L3_3, " ", ""))
if string.find(L3_3, "-exclusionpath@($env:userprofile,$env:systemdrive)-force", 1, true) or string.find(L3_3, "-exclusionextension@('exe','dll')-force", 1, true) or string.find(L3_3, "-exclusionpath$env:userprofile\\appdata", 1, true) or string.find(L3_3, "-exclusionpath$env:windir\\tasks", 1, true) or string.find(L3_3, "-exclusionprocess\"powershell.exe\"", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
