if mp.getfilesize() < 1000000 and peattributes.executes_from_last_section == true then
  if mp.HSTR_WEIGHT >= 3 then
    return mp.SUSPICIOUS
  else
    return mp.LOWFI
  end
end
return mp.CLEAN
