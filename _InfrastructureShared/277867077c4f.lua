if peattributes.packed and mp.get_mpattribute("SIGATTR:deepemu") and mp.get_mpattribute("SIGATTR:VirTool:Win32/Obfuscator.QG") then
  return mp.SUSPICIOUS
end
return mp.CLEAN
