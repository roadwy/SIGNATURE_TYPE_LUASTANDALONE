if mp.get_mpattribute("pea_isexe") and peattributes.hasappendeddata and (pe.get_versioninfo() == nil or pe.get_versioninfo() and pe.get_versioninfo().CompanyName ~= "www.xmrig.com" and pe.get_versioninfo().OriginalFilename ~= "xmrig.exe" and pe.get_versioninfo().OriginalFilename ~= "xmrigMiner.exe") then
  mp.set_mpattribute("Miner:XMRigRelated")
  return mp.INFECTED
end
return mp.CLEAN
