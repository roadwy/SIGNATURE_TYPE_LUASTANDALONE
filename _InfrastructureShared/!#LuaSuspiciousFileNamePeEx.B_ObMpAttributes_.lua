local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil and L0_0:len() > 10 and L1_1 ~= nil and L1_1:len() > 31 then
  if L0_0:find("cache\\", 1, true) or L0_0:find("backup\\", 1, true) or L0_0:find(".git\\", 1, true) or L0_0:find("\\programdata\\", 1, true) or L0_0:find("\\appdata\\local\\temp\\tencent\\", 1, true) or L0_0:find(":\\windows\\system32\\grouppolicy\\", 1, true) or L0_0:find("\\system recovery\\", 1, true) or L1_1:find(".cache", 1, true) or L1_1:find(".error", 1, true) or L0_0:find("\\recovered data\\", 1, true) or L0_0:find("\\mscrm_rw\\assemblycache\\", 1, true) or L0_0:find("\\server\\microsoftdynamicsnavserver", 1, true) or L0_0:find(":\\sysmon\\", 1, true) or L0_0:find(":\\falsepos\\", 1, true) then
    mp.set_mpattribute("Lua:ExceptionPathPE")
    return mp.CLEAN
  end
  if not string.sub(L1_1, -5):find(".", 1, true) then
    return mp.CLEAN
  end
  if L1_1:match("^[0-9a-f]+") == nil then
    return mp.CLEAN
  end
  if 31 > L1_1:match("^[0-9a-f]+"):len() or L1_1:match("^[0-9a-f]+"):len() < L1_1:len() - 5 then
    return mp.CLEAN
  end
  mp.set_mpattribute("//LuaSuspiciousFileNamePeExChild.B")
  return mp.INFECTED
end
return mp.CLEAN
