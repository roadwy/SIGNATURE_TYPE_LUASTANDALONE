if mp.get_mpattribute("FOPEX:VirTool:Win32/Obfuscator.AKN") then
  pe.mmap_patch_va(pevars.sigaddr + 6, "\131\192\t")
end
return mp.INFECTED
