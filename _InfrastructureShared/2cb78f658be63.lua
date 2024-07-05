local L0_0
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if not L0_0.find(L0_0, "avira.pwm.nativemessaging.exe") then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
