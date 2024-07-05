if bm.get_imagepath() == nil then
  return mp.CLEAN
end
if ({
  ["isxagent.exe"] = true,
  ["totalrecoveryprosetup.exe"] = true
})[string.lower(bm.get_imagepath():match("\\([^\\]+)$"))] then
  return mp.CLEAN
end
return mp.INFECTED
