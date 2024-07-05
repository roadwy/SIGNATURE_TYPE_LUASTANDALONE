local L0_0
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 4096 then
  L0_0 = nil
  L0_0 = mp.getfilename()
  if L0_0 == nil then
    return mp.CLEAN
  end
  if L0_0:sub(-19) == "->word/document.xml" then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
