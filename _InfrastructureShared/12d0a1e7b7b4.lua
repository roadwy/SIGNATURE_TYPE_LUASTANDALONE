local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.find(L0_0, "->(Ole Stream", -18, true) == nil then
  return mp.CLEAN
end
if mp.BMSearchFile(7, 5, "\235G\n\001\005\144\000") ~= 0 then
  return mp.CLEAN
end
mp.UfsSetMetadataBool("OleShellCode", true)
return mp.INFECTED
