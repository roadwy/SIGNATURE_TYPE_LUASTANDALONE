-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6cb3a989d410_Includes_BMLuaLib 

-- params : ...
-- function num : 0
reportSessionInformation()
sms_untrusted_process()
if reportGenericRansomware("genb_ransom_meta") == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

