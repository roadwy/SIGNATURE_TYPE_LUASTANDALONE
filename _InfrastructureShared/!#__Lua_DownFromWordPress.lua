local L0_0
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if string.len(L0_0) < 12 then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "/j.mp/", 1, true) or string.find(L0_0, "/www.j.mp/", 1, true) then
  mp.set_mpattribute("//Lua:SuspUrlDownload")
elseif string.find(L0_0, "/wp-content/", 1, true) then
  mp.set_mpattribute("Lua:WordPressContent")
elseif string.find(L0_0, "/wp-includes/", 1, true) then
  mp.set_mpattribute("Lua:WordPressInclude")
elseif string.find(L0_0, "/wp-admin/", 1, true) then
  mp.set_mpattribute("Lua:WordPressAdmin")
end
if true == true then
  return mp.INFECTED
end
return mp.CLEAN
