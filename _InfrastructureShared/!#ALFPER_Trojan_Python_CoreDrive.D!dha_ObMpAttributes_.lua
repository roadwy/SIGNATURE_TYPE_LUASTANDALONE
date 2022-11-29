-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALFPER_Trojan_Python_CoreDrive.D!dha_ObMpAttributes_ 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CoreDriveD") > 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

