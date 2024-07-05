local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!invokefunction") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!invoke-mimikatz") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!ps1") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!command") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!cred") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!function") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!dumpcreds") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!dumpcerts") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!cert") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!mz") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!dllcheck") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!MachineType") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!MagicType") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!VirtualAlloc") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!memcpy") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!CreateThread") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!IsWow64Process") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!WriteShellCode") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx64") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx86") then
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!Invoke") then
end
if L0_0 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 5 or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 13 then
  return mp.INFECTED
end
if L0_0 >= 2 or L0_0 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 2 then
  mp.set_mpattribute("Lua:HackTool:PowerShell/Mimikatz!possible")
end
if 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 5 then
  mp.set_mpattribute("Lua:HackTool:PowerShell/Mimikatz!injector")
end
return mp.CLEAN
