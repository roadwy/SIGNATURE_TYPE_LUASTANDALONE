if mp.get_mpattribute("MHSTR:MacroJustAutoOpen") and mp.get_mpattribute("MHSTR:MacroDownload") then
  return mp.INFECTED
end
return mp.CLEAN
