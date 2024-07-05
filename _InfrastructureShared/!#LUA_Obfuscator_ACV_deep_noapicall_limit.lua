if mp.get_mpattribute("HSTR:VirTool:Win32/Obfuscator.ACV!filter") and mp.get_mpattribute("HSTR:VirTool:Win32/Obfuscator.ACV!pointer") and mp.get_mpattribute("MpAPILimitReached") then
  pe.set_peattribute("deep_analysis", true)
  pe.set_peattribute("disable_apicall_limit", true)
  pe.reemulate()
end
return mp.CLEAN
