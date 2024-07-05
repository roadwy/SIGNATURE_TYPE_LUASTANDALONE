local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:len() < 14 then
  return mp.CLEAN
end
if string.match(L0_0, "word/embeddings/oleobject%d.+bin.+->.+%.js$") or string.match(L0_0, "ole stream %d.+->.+%.js$") then
  return mp.INFECTED
end
return mp.CLEAN
