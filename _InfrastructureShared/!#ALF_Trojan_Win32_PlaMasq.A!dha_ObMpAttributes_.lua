-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Trojan_Win32_PlaMasq.A!dha_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  if l_0_0.CompanyName ~= "Intel Corporation" then
    return mp.CLEAN
  end
  if l_0_0.ProductName == "Intel(R) Chipset Device Software" then
    return mp.INFECTED
  end
end
return mp.CLEAN

