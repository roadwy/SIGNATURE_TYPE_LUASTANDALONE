local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 300 or L0_0 > 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if L1_1 == nil then
  return mp.CLEAN
end
if L1_1:find("\\program files\\", 1, true) or L1_1:find("\\clientaccess\\owa\\prem\\", 1, true) or L1_1:find(":\\windows\\", 1, true) or L1_1:find(":\\program files (x86)\\", 1, true) or L1_1:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or L1_1:find("\\google\\chrome\\user data\\profile", 1, true) or L1_1:find("\\device\\harddiskvolume", 1, true) or L1_1:find(":\\inetpub\\", 1, true) or L1_1:find("\\netlogon\\", 1, true) or L1_1:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or L1_1:find("\\mozilla\\firefox\\profiles\\", 1, true) or L1_1:find("\\programdata\\lenovo\\userguide", 1, true) or L1_1:find("\\google\\chrome\\user data\\default\\extensions", 1, true) or L1_1:find("\\appdata\\roaming\\aida\\", 1, true) then
  return mp.CLEAN
end
if string.find(L1_1, "^\\\\[^\\]+\\") then
  return mp.CLEAN
end
return mp.INFECTED
