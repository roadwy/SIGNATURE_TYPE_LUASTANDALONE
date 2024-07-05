local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(mp.getfilename(), -3))
if L0_0 == ".7z" or L0_0 == ".gz" then
  mp.UfsSetMetadataBool("Lua:AttachmentContainerExt", true)
  return mp.INFECTED
elseif (L0_0 == "zip" or L0_0 == "ace" or L0_0 == "rar") and string.sub(mp.getfilename(), -4, -4) == "." then
  mp.UfsSetMetadataBool("Lua:AttachmentContainerExt", true)
  return mp.INFECTED
end
return mp.CLEAN
