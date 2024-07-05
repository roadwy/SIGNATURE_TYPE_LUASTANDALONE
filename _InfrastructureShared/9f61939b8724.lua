mp.set_mpattribute("HSTR:Renos_msposer")
if mp.get_mpattribute("PEPCODE:VirTool:Win32/Obfuscator.ED") then
  return mp.INFECTED
end
return mp.CLEAN
