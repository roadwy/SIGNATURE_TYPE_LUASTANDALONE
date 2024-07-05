if mp.get_mpattribute("LoD:VirTool:Win32/Obfuscator.UR") ~= true then
  return mp.CLEAN
end
return mp.INFECTED
