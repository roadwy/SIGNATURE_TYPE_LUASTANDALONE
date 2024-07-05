local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!dllcheck") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!MachineType") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!MagicType") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!VirtualAlloc") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!memcpy") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!CreateThread") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!IsWow64Process") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!WriteShellCode") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx64") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx86") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mikatz!Invoke") then
  L0_0 = L0_0 + 1
end
if L0_0 >= 4 then
  mp.set_mpattribute("Lua:Powershell/MemCodeInject.A:4")
end
if L0_0 >= 6 then
  mp.set_mpattribute("Lua:Powershell/MemCodeInject.A:6")
end
if L0_0 >= 8 then
  mp.set_mpattribute("Lua:Powershell/MemCodeInject.A:8")
end
if L0_0 >= 10 then
  return mp.INFECTED
end
return mp.CLEAN
