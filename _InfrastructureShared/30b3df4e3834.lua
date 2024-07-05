local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if mp.IsKnownFriendlyFile(L0_0, true, true) == true then
  return mp.CLEAN
end
if ({
  ["multitip.exe"] = true,
  ["oawrapper.exe"] = true,
  ["kindle.exe"] = true,
  ["mysqlworkbench.exe"] = true,
  ["360se.exe"] = true,
  ["silhouette studio.exe"] = true,
  ["scrivener.exe"] = true,
  ["java.exe"] = true,
  ["scratch 2.exe"] = true
})[string.lower(L0_0:match("\\([^\\]+)$"))] then
  return mp.CLEAN
end
return mp.INFECTED
