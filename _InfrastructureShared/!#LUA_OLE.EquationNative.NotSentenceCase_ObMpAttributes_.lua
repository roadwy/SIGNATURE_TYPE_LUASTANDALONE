local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 200000 or L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(footerpage)
if L1_1:find("E%zq%zu%za%zt%zi%zo%zn%z %zN%za%zt%zi%zv%ze") == nil and L1_1:find("[Ee]%z[Qq]%z[Uu]%z[Aa]%z[Tt]%z[Ii]%z[Oo]%z[Nn]%z %z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  return mp.INFECTED
end
if L1_1:find("\001%zO%zl%ze%z1%z0%zN%za%zt%zi%zv%ze") == nil and L1_1:find("\001%z[Oo]%z[Ll]%z[Ee]%z1%z0%z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  mp.set_mpattribute("Lua:OLE.Ole10Native.NotSentenceCase")
end
if L0_0 < 500000 or L0_0 > 1000000 then
  return mp.CLEAN
end
mp.readprotection(false)
L1_1 = tostring(mp.readfile(L0_0 - 8192, 4096))
if L1_1:find("E%zq%zu%za%zt%zi%zo%zn%z %zN%za%zt%zi%zv%ze") == nil and L1_1:find("[Ee]%z[Qq]%z[Uu]%z[Aa]%z[Tt]%z[Ii]%z[Oo]%z[Nn]%z %z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  return mp.INFECTED
end
if L1_1:find("\001%zO%zl%ze%z1%z0%zN%za%zt%zi%zv%ze") == nil and L1_1:find("\001%z[Oo]%z[Ll]%z[Ee]%z1%z0%z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  mp.set_mpattribute("Lua:OLE.Ole10Native.NotSentenceCase")
end
return mp.CLEAN
