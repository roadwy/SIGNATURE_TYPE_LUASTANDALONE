if peattributes.packed and mp.get_mpattribute("PEBMPAT:VirTool:Win32/Obfuscator.QG") and mp.get_mpattribute("PEBMPAT:VirTool:Win32/Obfuscator.QG.2") then
  return mp.SUSPICIOUS
end
return mp.CLEAN
