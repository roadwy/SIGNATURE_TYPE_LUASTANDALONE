local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4194304 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if not mp.get_mpattribute("Lua:DownFromWebMail") then
  if L1_1 == nil or (string.len(L1_1) < 50 or string.find(L1_1, "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) == nil) and (string.find(L1_1, "\\downloads", 1, true) == nil or not isOutlookProcess()) then
    return mp.CLEAN
  end
  if string.find(L1_1, ":\\recoverybin\\volume-", 1, true) ~= nil then
    return mp.CLEAN
  end
end
if L2_2 == nil or string.len(L2_2) < 9 then
  return mp.CLEAN
end
if ({
  [".jse"] = true,
  [".vbs"] = true,
  [".wsf"] = true,
  [".vbe"] = true,
  [".hta"] = true,
  [".bat"] = true,
  [".ps1"] = true,
  [".cmd"] = true,
  [".exe"] = true,
  [".scr"] = true,
  [".pif"] = true,
  [".js"] = true,
  [".ace"] = true,
  [".htm"] = true
})[L2_2:sub(-4)] == true or ({
  [".jse"] = true,
  [".vbs"] = true,
  [".wsf"] = true,
  [".vbe"] = true,
  [".hta"] = true,
  [".bat"] = true,
  [".ps1"] = true,
  [".cmd"] = true,
  [".exe"] = true,
  [".scr"] = true,
  [".pif"] = true,
  [".js"] = true,
  [".ace"] = true,
  [".htm"] = true
})[L2_2:sub(-3)] == true then
  return mp.INFECTED
end
return mp.CLEAN
