local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("undecimus", 1, true) then
  return mp.CLEAN
end
if L0_0:find(".deb", 1, true) then
  return mp.CLEAN
end
if L0_0:find(".app", 1, true) then
  return mp.CLEAN
end
if L0_0:find(".iso", 1, true) then
  return mp.CLEAN
end
if L0_0:find(".ipa", 1, true) then
  return mp.CLEAN
end
if L0_0:find("drfone", 1, true) then
  return mp.CLEAN
end
if L0_0:find("checkn", 1, true) then
  return mp.CLEAN
end
if L0_0:find("data.tar.xz", 1, true) then
  return mp.CLEAN
end
if L0_0:find("program files", 1, true) then
  return mp.CLEAN
end
if L0_0:find("programdata", 1, true) then
  return mp.CLEAN
end
if L0_0:find(".exe", 1, true) then
  return mp.CLEAN
end
if L0_0:find("just4fun", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
