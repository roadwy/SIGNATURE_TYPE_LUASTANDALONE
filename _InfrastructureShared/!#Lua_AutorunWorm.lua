if mp.GetResmgrBasePlugin() ~= "AutorunInf" then
  return mp.CLEAN
end
if mp.get_mpattribute("Win32/AutoIt") or mp.get_mpattribute("Win32/AutoIt_HSTR1") or mp.get_mpattribute("Win32/AutoIt_HSTR2") then
end
if true then
  if not mp.get_mpattribute("AGGREGATOR:SuspiciousAutoIt") then
    return mp.CLEAN
  end
elseif true then
  if not mp.get_mpattribute("RPF:vb_mfic") and not mp.get_mpattribute("RPF:vb_hfic") then
    return mp.CLEAN
  end
else
  return mp.CLEAN
end
return mp.INFECTED
