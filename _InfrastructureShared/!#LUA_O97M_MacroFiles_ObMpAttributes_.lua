if mp.getfilesize() >= 10240000 then
  return mp.CLEAN
end
if mp.getfilesize() < 102400 then
  mp.set_mpattribute("LUA:O97M/MacroFiles_FileSizeBorder")
else
  if mp.get_mpattribute("MHSTR:MacroJustEnviron") or mp.get_mpattribute("MHSTR:MacroGetEnvironmentVariable") then
  end
  if mp.get_mpattribute("MHSTR:MacroExecute") then
  end
  if mp.get_mpattribute("MHSTR:MacroDownload") or mp.get_mpattribute("MHSTR:MacroHTTPRequest") then
  end
  if mp.get_mpattribute("MHSTR:MacroConcatVariations") or mp.get_mpattribute("MHSTR:MacroJustConcatVariations") or mp.get_mpattribute("MHSTR:MacroJustConcatChrVariations") then
  end
  if mp.getfilesize() < 1024000 and 0 + 1 + 1 + 1 + 1 >= 2 then
    mp.set_mpattribute("LUA:O97M/MacroFilesAttributeCheck.A")
  elseif 0 + 1 + 1 + 1 + 1 >= 3 then
    mp.set_mpattribute("LUA:O97M/MacroFilesAttributeCheck.B")
  end
end
return mp.CLEAN
