-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3cafd9f92_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  reportPersistedContext("deprecatedDnsRecordType", "bmurl", "SuspiciousDnsQuery.A")
  ;
  (MpCommon.SetPersistContextNoPath)("deprecatedDnsRecordType", {}, 1)
else
  if (this_sigattrlog[2]).matched then
    reportPersistedContext("unknownDnsRecordType", "bmurl", "SuspiciousDnsQuery.A")
    ;
    (MpCommon.SetPersistContextNoPath)("unknownDnsRecordType", {}, 1)
  end
end
return mp.INFECTED

