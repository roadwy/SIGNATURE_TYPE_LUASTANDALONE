if mp.get_mpattribute("HSTR:Win32/DelphiFile") and mp.get_mpattribute("pea_isexe") and mp.getfilesize() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN
