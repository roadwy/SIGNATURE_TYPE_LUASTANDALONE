local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.find(L0_0, "rwenc_exe_x86_debug", 1, true) or string.find(L0_0, "rwenc_exe_x64_debug", 1, true) or string.find(L0_0, "rwenc_dll_x86_debug", 1, true) or string.find(L0_0, "rwenc_dll_x64_debug", 1, true) or string.find(L0_0, "rwenc_x86_x86_debug", 1, true) or string.find(L0_0, "rwenc_x86_x64_debug", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
