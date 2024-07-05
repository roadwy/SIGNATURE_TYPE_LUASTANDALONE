local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:RefPeInject.A") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PsCredInject.A!NewWinLogonA") or mp.get_mpattribute("SCRIPT:PsCredInject.A!NewWinLogonB") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PsCredInject.A!ExistingWinLogon") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PsCredInject.A!Binary") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PsCredInject.A!BinaryDecode") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PsCredInject.A!BinaryInject") then
  L0_0 = L0_0 + 1
end
if L0_0 >= 2 then
  mp.set_mpattribute("Lua:PowerShell/PsCredInject.A!suspicious")
end
if L0_0 >= 4 then
  return mp.INFECTED
end
return mp.CLEAN
