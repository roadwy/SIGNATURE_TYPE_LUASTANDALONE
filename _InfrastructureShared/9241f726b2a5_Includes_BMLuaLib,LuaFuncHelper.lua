local L0_0, L1_1
L0_0 = versioning
L0_0 = L0_0.GetTestMode
L0_0 = L0_0()
if L0_0 ~= 65000 then
  L0_0 = MpCommon
  L0_0 = L0_0.IsSampled
  L1_1 = 1000
  L0_0 = L0_0(L1_1, true, true, true)
  if L0_0 == false then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.utf8p1
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "[%w%-%.]*%.[%w%-]+%.[%w]+")
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.bitand
L1_1 = L1_1(this_sigattrlog[5].np2, 65535)
if ("\001\002\003\004\005\006\a\b\t\n\v\f\r\014\015\016\017\018\019\020\021\022\023\024\025\026\027\028\029\030\031 !\"#$%&()*+,-./012345789:;<=>?cdefghijklm\249\250\251\252\253\254\255"):find(string.char(L1_1), 1, true) then
  return mp.CLEAN
end
if mp.CheckUrl(L0_0) == 1 and mp.CheckUrl(L0_0) == 1 then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContextNoPath("unknownDnsRecordType", L0_0) then
  MpCommon.AppendPersistContextNoPath("unknownDnsRecordType", L0_0, 3600)
end
if MpCommon.GetPersistContextCountNoPath("unknownDnsRecordType") > 10 then
  return mp.INFECTED
end
return mp.CLEAN
