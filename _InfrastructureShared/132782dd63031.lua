if mp.get_mpattribute("BM_MpIsInstaller") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
