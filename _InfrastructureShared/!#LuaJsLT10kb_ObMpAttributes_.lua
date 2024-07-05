local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(mp.getfilename(), -3))
if L0_0 == ".js" or L0_0 == "jse" then
  if mp.getfilesize() > 1000 and mp.getfilesize() < 10000 then
    mp.set_mpattribute("//LuaJsLT10kb")
  end
  return mp.INFECTED
end
return mp.CLEAN
