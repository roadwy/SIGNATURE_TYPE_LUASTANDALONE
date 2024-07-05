local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 204800 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pesecs
L2_2 = pehdr
L2_2 = L2_2.NumberOfSections
L1_1 = L1_1[L2_2]
L1_1 = L1_1.PointerToRawData
L2_2 = pesecs
L2_2 = L2_2[pehdr.NumberOfSections]
L2_2 = L2_2.SizeOfRawData
L1_1 = L1_1 + L2_2
L2_2 = L0_0 - L1_1
if L2_2 < 256 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(false)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(L1_1, 256)
if string.find(L2_2, "      www.winzip.com\000\000\000-win32 -", 1, true) then
  mp.set_mpattribute("LUA:WinZip_winsfx")
  return mp.INFECTED
elseif string.find(L2_2, "PK\003\004", 1, true) then
  mp.set_mpattribute("LUA:PKinOverlay_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "MSCF\000", 1, true) then
  mp.set_mpattribute("LUA:MSCFinOverlay_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\208\207\017\224\161\177\026\225", 1, true) then
  mp.set_mpattribute("LUA:OLEinOverlay_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "/0\238\031^N\229\030", 1, true) then
  mp.set_mpattribute("LUA:Advanced_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\167\135\b\000", 1, true) == 1 then
  mp.set_mpattribute("LUA:InstallFactory_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\213\019\228\232\001\000\000\000", 1, true) then
  mp.set_mpattribute("LUA:Install4j_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "SPIS\026LH5", 5, true) then
  mp.set_mpattribute("LUA:GPInstall_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "ExcelsiorII1", 1, true) then
  mp.set_mpattribute("LUA:Excelsior_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "ASWsetupFPkgFil3", 1, true) then
  mp.set_mpattribute("LUA:Avast_Installer")
  return mp.INFECTED
elseif string.find(L2_2, ".eh_frame\000", 1, true) == 5 then
  mp.set_mpattribute("LUA:BitRock_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\v\v\175\175\v\v\164", 1, true) == 1 then
  mp.set_mpattribute("LUA:AutoPlayMedia_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "$_BIM_CONFIG_START_$", 1, true) == 1 then
  mp.set_mpattribute("LUA:Bytessence_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "'c'c\018&\tu\019\024\001x", 1, true) == 1 then
  mp.set_mpattribute("LUA:ChaosSoftware_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "wwgT)", 1, true) == 1 then
  mp.set_mpattribute("LUA:ClickTeam_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "GRCSETUPINFORMATION", 1, true) == 5 then
  mp.set_mpattribute("LUA:Codegear_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\002\006\n\004\005\253Y", 1, true) == 1 then
  mp.set_mpattribute("LUA:CreateInstall_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "aWAW", 1, true) == 1 then
  mp.set_mpattribute("LUA:CreateInstall2_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "CK16", 1, true) == 1 then
  mp.set_mpattribute("LUA:CrypKey_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "BZh91AY&SY", 1, true) == 1 then
  mp.set_mpattribute("LUA:Spoon_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "[metadata]", 1, true) == 1 then
  mp.set_mpattribute("LUA:Distutils_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "EPSF", 1, true) == 1 then
  mp.set_mpattribute("LUA:Eschalon_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "###FDMDATA###", 1, true) == 1 then
  mp.set_mpattribute("LUA:FDM_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\192\222\206\203\141\141\141\141", 1, true) == 1 then
  mp.set_mpattribute("LUA:Ghost_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\189\166\238\233\249\237\239\237\229\237", 1, true) == 1 then
  mp.set_mpattribute("LUA:Hamrick_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "XXataDfOnigeB", 1, true) == 1 then
  mp.set_mpattribute("LUA:ID_Media_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "*3\000\000\218\005\000\000\254\193\205fn\188\207\001\254\193\205fn\188\207\001\000", 1, true) == 1 then
  mp.set_mpattribute("LUA:IDM_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "stgc_hdr", 1, true) == 1 then
  mp.set_mpattribute("LUA:Intenium_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "TARTARTARTARTART", 1, true) == 1 then
  mp.set_mpattribute("LUA:MiKTeX_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "[(*|*)]MZ", 1, true) == 1 then
  mp.set_mpattribute("LUA:Mioplanet_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "wwwwI\135G\018", 1, true) == 1 then
  mp.set_mpattribute("LUA:MultimediaFusion_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\151\003\000\000\002\001", 1, true) == 1 then
  mp.set_mpattribute("LUA:PantarayQSetup_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "7\a\000\000\002\001", 1, true) == 1 then
  mp.set_mpattribute("LUA:PantarayQSetup2_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "PIMPFILE\000", 1, true) == 1 then
  mp.set_mpattribute("LUA:PIMP_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\224\224\225\225\226\226\227\227\228\228\229\229\230\230\231\231", 1, true) == 1 then
  mp.set_mpattribute("LUA:SetupFactory_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "\224\225\226\227\228\229\230", 1, true) == 1 then
  mp.set_mpattribute("LUA:SetupFactory2_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "Smart Install Maker v", 1, true) then
  mp.set_mpattribute("LUA:SmartInstallMaker_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "UM\003\n\000", 1, true) == 1 then
  mp.set_mpattribute("LUA:SonyWindows_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "g\021R4\255M6B", 1, true) == 1 then
  mp.set_mpattribute("LUA:Staticsup_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "This is the end of the executable", 1, true) == 1 then
  mp.set_mpattribute("LUA:SwiftView_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "CINSTRT", 1, true) == 2 then
  mp.set_mpattribute("LUA:TrueCryptVeraCrypt_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "ESIV", 1, true) == 1 then
  mp.set_mpattribute("LUA:Vise_Installer")
  return mp.INFECTED
elseif string.find(L2_2, "NOS_PO", 1, true) ~= nil and string.find(L2_2, "NOS_PO", 1, true) <= 6 and 1 <= string.find(L2_2, "NOS_PO", 1, true) then
  mp.set_mpattribute("LUA:NOS_Installer")
  return mp.INFECTED
end
return mp.CLEAN
