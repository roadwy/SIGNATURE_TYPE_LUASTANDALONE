if peattributes.isdll and peattributes.reads_vdll_code and mp.get_mpattribute("LoD:VirTool:Win32/Obfuscator.UR") and mp.getfilesize() >= 300000 and mp.getfilesize() < 900000 then
  return mp.INFECTED
end
return mp.CLEAN
