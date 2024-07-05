local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 512)
if string.find(L0_0, "taskmgr.exe, msconfig.exe, regedit.exe, cmd.exe") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
