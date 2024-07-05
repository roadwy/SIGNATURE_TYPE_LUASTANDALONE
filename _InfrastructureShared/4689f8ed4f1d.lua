if string.byte(pe.mmap_va(pevars.sigaddr + 5 + string.byte(pe.mmap_va(pevars.sigaddr + 4, 1), 1) + 1, 1), 1) == 184 then
else
end
pe.mmap_patch_va(pevars.sigaddr + (string.find(pe.mmap_va(pevars.sigaddr + string.byte(pe.mmap_va(pevars.sigaddr + 4, 1), 1), 64), "\129\238\000\000\002\000", 1, true) - 1) + string.byte(pe.mmap_va(pevars.sigaddr + 4, 1), 1), "\144\144\144\144\144\144")
return mp.INFECTED
