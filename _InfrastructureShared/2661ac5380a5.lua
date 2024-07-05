if mp.IsTrustedFile(false) == true or mp.IsKnownFriendlyFile(mp.getfilename(), true, true) == true then
  return mp.CLEAN
end
return mp.INFECTED
