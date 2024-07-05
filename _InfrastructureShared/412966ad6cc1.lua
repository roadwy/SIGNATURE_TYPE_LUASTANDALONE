local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("//RPF:IS_Pdf")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 20000 then
    return mp.CLEAN
  end
  if L0_0 > 50000 then
    return mp.CLEAN
  end
  mp.readprotection(false)
  if mp.readfile(0, L0_0):match("/URI %(http%://usaa%.com%-sec%-inet%-auth%-logon%-ent%-logon%-logon%-") then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
