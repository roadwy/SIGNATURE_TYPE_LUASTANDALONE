local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1200000 or L0_0 < 4000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "kali", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "\\data\\exploits\\", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "metasploit", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "program files", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "oxy", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "mtk-su", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "cve-20", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "supersu", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "strace", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "unlock", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "ctssecurity", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "\\so_rules\\precompiled\\", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "\\bin\\sys\\", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "android-ndk-r", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "llvmcache", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.find
L2_2 = L2_2(L1_1, "\\toolchains\\llvm\\", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if ({
  [".ko"] = "",
  [".dwo"] = "",
  [".rc"] = ""
})[string.sub(L2_2, -5):match("(%.%w+)$")] then
  return mp.CLEAN
end
return mp.INFECTED
