if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
elseif mp.get_mpattribute("MHSTR:MacroDownload") and mp.get_mpattribute("MHSTR:MacroJustOpen") then
  return mp.INFECTED
end
return mp.LOWFI
