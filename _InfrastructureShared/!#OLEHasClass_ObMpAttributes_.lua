local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:len() < 17 then
  return mp.CLEAN
end
if string.find(L0_0, "word/embeddings/oleobject%d.+bin.+->.+%.class$") or string.find(L0_0, "ole stream %d.+->.+%.class$") then
  return mp.INFECTED
end
return mp.CLEAN
