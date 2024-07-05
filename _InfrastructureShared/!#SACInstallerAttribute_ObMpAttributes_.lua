if mp.get_mpattributesubstring("7zSFX") or mp.get_mpattributesubstring("acesfx") or mp.get_mpattributesubstring("lhasfx") or mp.get_mpattributesubstring("msisfx") or mp.get_mpattributesubstring("rsfx") or mp.get_mpattributesubstring("winsfx") or mp.get_mpattributesubstring("cabsfx") or mp.get_mpattributesubstring("sfxcab") or mp.get_mpattributesubstring("ZipSFX") or mp.get_mpattributesubstring("NSIS") or mp.get_mpattributesubstring("RARSFX") or mp.get_mpattributesubstring("sfxrar") or mp.get_mpattributesubstring("InnoSetup") or mp.get_mpattributesubstring("CreateInstall") or mp.get_mpattributesubstring("PyInstaller") or mp.get_mpattributesubstring("InstallShield") then
  return mp.INFECTED
end
return mp.CLEAN
