local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_security
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.packersigmatched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.resource_only_dll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= "mscoree.dll" then
  return mp.CLEAN
end
if mp.get_mpattribute("HSTR:CleanMscoreeString") then
  return mp.CLEAN
end
if mp.get_mpattribute("Lua:PE:UpxSection") then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("Ramnit") > 0 then
  return mp.CLEAN
end
if mp.getfilesize() > 350000 or mp.getfilesize() < 20000 then
  return mp.CLEAN
end
if pe.get_exports() < 3 then
  mp.set_mpattribute("Lua:FakeMscoree.SmallNumExports")
  return mp.INFECTED
end
if (pe.get_exports() == 5 or pe.get_exports() == 10) and pe.query_import(pe.IMPORT_STATIC, 2420465236) then
  mp.set_mpattribute("Lua:FakeMscoree.ShellcodeLoader")
  return mp.INFECTED
end
if pe.get_imports() > 1 and pe.get_imports() < 75 then
  mp.set_mpattribute("Lua:FakeMscoree.SmallNumImports")
  return mp.INFECTED
end
return mp.CLEAN
