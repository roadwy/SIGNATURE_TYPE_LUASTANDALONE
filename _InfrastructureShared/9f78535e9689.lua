local L0_0, L1_1
L0_0 = {}
L0_0[332] = "do_exhaustivehstr_rescan"
L0_0[34404] = "do_exhaustivehstr_64bit_rescan"
L1_1 = {}
L1_1[332] = 805306483
L1_1[34404] = 805306484
if mp.getfilesize() > 1048576 then
  return mp.CLEAN
end
if not peattributes.isdll or not peattributes.hasexports then
  return mp.CLEAN
end
if L0_0[pehdr.Machine] == nil or L1_1[pehdr.Machine] == nil then
  return mp.CLEAN
end
if hstrlog[3].matched then
  return mp.CLEAN
end
if pe.get_versioninfo() == nil or pe.get_versioninfo().InternalName ~= "dnsapi" or pe.get_versioninfo().CompanyName ~= "Microsoft Corporation" then
  return mp.CLEAN
end
if not hstrlog[4].matched or not hstrlog[5].matched or not hstrlog[6].matched then
  mp.set_mpattribute(L0_0[pehdr.Machine])
  return mp.CLEAN
end
if hstrlog[7].matched then
  mp.changedetectionname(L1_1[pehdr.Machine])
end
return mp.INFECTED
