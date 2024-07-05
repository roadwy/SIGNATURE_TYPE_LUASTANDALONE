if this_sigattrlog[1].matched then
  reportPersistedContext("deprecatedDnsRecordType", "bmurl", "SuspiciousDnsQuery.A")
  MpCommon.SetPersistContextNoPath("deprecatedDnsRecordType", {}, 1)
elseif this_sigattrlog[2].matched then
  reportPersistedContext("unknownDnsRecordType", "bmurl", "SuspiciousDnsQuery.A")
  MpCommon.SetPersistContextNoPath("unknownDnsRecordType", {}, 1)
end
return mp.INFECTED
