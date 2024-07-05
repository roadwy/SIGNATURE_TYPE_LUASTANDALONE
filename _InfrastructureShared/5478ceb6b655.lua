if peattributes.isdll then
  if not peattributes.hstr_exhaustive and peattributes.dt_error_heur_exit_criteria then
    pe.set_peattribute("hstr_exhaustive", true)
    pe.reemulate()
  end
  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.AOT!dll")
  return mp.CLEAN
end
mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.AOT")
return mp.CLEAN
