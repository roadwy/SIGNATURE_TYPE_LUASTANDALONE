local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if string.find(L0_0, "\\openfiles.exe", 1, true) or string.find(L0_0, "\\microsoft\\teams\\current\\teams.exe", 1, true) then
    return mp.CLEAN
  end
  bm.add_action("EmsScan", 5000)
  return mp.INFECTED
end
return mp.CLEAN
