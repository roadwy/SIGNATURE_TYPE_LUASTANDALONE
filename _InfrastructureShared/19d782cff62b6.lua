if peattributes.amd64_image and peattributes.isexe then
  mp.set_mpattribute("HSTR:VirTool:Win64/Obfuscator.AKO")
  return mp.INFECTED
end
return mp.CLEAN
