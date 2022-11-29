-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5f7894e8225a 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).ProductName == "aramedia Application" and (mp.get_mpattribute)("//Gen_Installer") then
  return mp.INFECTED
end
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
return mp.INFECTED

