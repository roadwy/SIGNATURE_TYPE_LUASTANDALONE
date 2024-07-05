if not mp.get_mpattribute("HSTR:Trojan:Win32/MEM_KernelResolve_x64.D") and not mp.get_mpattribute("HSTR:Trojan:Win32/MEM_KernelResolve_x64.E") then
  return mp.CLEAN
end
return mp.INFECTED
