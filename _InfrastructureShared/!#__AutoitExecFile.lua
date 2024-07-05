if not peattributes.isexe then
  return mp.CLEAN
end
if mp.get_mpattribute("//NSIS_Installer") then
  return mp.CLEAN
end
if mp.get_mpattribute("//InnoSetup_Installer") then
  return mp.CLEAN
end
if mp.get_mpattribute("//SmartInstallMaker") then
  return mp.CLEAN
end
if mp.get_mpattribute("//Sfx_Installer") then
  return mp.CLEAN
end
if mp.get_mpattribute("//HSTR:Au3ExemptionList") then
  return mp.CLEAN
end
if mp.getfilesize() >= 10485760 then
  return mp.CLEAN
end
if mp.ispackedwith("AutoIt_+") or mp.get_mpattributesubstring("Win32/AutoIt") or mp.get_mpattributesubstring("PESTATIC:cleanstub_autoitv") then
  if mp.get_mpattribute("RPF:TopLevelFile") then
    return mp.INFECTED
  end
  if peattributes.packed == true then
    return mp.INFECTED
  end
end
return mp.CLEAN
