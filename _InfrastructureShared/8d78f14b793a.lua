local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 155652 then
  L0_0 = mp
  L0_0 = L0_0.readfile
  L0_0 = L0_0(155648, 4)
  if mp.readu_u16(L0_0, 1) == 23117 then
    mp.set_mpattribute("LobaostInfected")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L0_0("LobaostOriginal")
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
