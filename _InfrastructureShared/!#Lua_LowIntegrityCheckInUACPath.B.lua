local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetUACMetadata
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.Info.ApplicationName)
  if string.find(L1_1, "\\appdata\\", 1, true) and (string.find(L1_1, "cache\\low\\", 1, true) or string.find(L1_1, "\\locallow\\", 1, true) or string.find(L1_1, "\\temp\\low\\", 1, true) or string.find(L1_1, "\\privacie\\low\\", 1, true) or string.find(L1_1, "\\inetcookies\\low\\", 1, true) or string.find(L1_1, "\\inetcache\\virtualize\\", 1, true) or string.find(L1_1, "\\microsoft\\playready\\", 1, true) or string.find(L1_1, "\\dntexception\\low\\", 1, true) or string.find(L1_1, "\\history\\low\\", 1, true)) then
    return mp.SYNCLOWFI
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
