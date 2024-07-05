local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 1
L0_0 = L0_0(L1_1, 1)
if L0_0 ~= "\255" then
  L0_0 = pe
  L0_0 = L0_0.mmap_va
  L1_1 = pevars
  L1_1 = L1_1.sigaddr
  L1_1 = L1_1 + 1
  L0_0 = L0_0(L1_1, 1)
elseif L0_0 == "\254" then
  L0_0 = pe
  L0_0 = L0_0.mmap_va
  L1_1 = pevars
  L1_1 = L1_1.sigaddr
  L1_1 = L1_1 + 11
  L0_0 = L0_0(L1_1, 1)
  if L0_0 ~= "\001" then
    L0_0 = pe
    L0_0 = L0_0.mmap_va
    L1_1 = pevars
    L1_1 = L1_1.sigaddr
    L1_1 = L1_1 + 11
    L0_0 = L0_0(L1_1, 1)
    if L0_0 ~= "\016" then
      L0_0 = pe
      L0_0 = L0_0.mmap_va
      L1_1 = pevars
      L1_1 = L1_1.sigaddr
      L1_1 = L1_1 + 11
      L0_0 = L0_0(L1_1, 1)
    end
  elseif L0_0 == "\000" then
    L0_0 = pe
    L0_0 = L0_0.mmap_patch_va
    L1_1 = pevars
    L1_1 = L1_1.sigaddr
    L1_1 = L1_1 + 6
    L0_0(L1_1, "\144\144")
    L0_0 = pe
    L0_0 = L0_0.mmap_patch_va
    L1_1 = pevars
    L1_1 = L1_1.sigaddr
    L1_1 = L1_1 + 12
    L0_0(L1_1, "\235")
    L0_0 = mp
    L0_0 = L0_0.set_mpattribute
    L1_1 = "FOPEX:Deep_Analysis_Disable_APILimit"
    L0_0(L1_1)
    L0_0 = 256
    L1_1 = pe
    L1_1 = L1_1.mmap_va
    L1_1 = L1_1(pevars.sigaddr, L0_0)
    if string.find(L1_1, "h@B\015%z") and string.find(L1_1, "`\174\n%z") then
      for _FORV_14_ = 1, 256 - string.find(L1_1, "h@B\015%z") do
        if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "`\174\n%z"), 3) == "P\255\021" then
          pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "`\174\n%z") + 1, "YYY\144\144\144")
        end
      end
      if string.find(L1_1, "j%z") and string.find(L1_1, "j\002", 1, true) then
        for _FORV_14_ = 1, 48 do
          if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "j\002", 1, true), 3) == "\000\255\021" then
            pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "j\002", 1, true) + 1, "YYY\144\144\144")
          end
        end
      end
      if (string.find(L1_1, "\255%z%z%zj") or string.find(L1_1, "\255%z%z%zh")) and string.find(L1_1, "j\001", 1, true) then
        for _FORV_14_ = 1, 48 do
          if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "j\001", 1, true), 3) == "\000\255\021" then
            pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "j\001", 1, true) + 1, "YYY\144\144\144")
          end
        end
      end
      if string.find(L1_1, "h\001%z\031%z") then
        for _FORV_14_ = 1, 48 do
          if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\001%z\031%z"), 3) == "\000\255\021" then
            pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\001%z\031%z") + 1, "YYY\144\144\144")
          end
        end
      end
      if string.find(L1_1, "h\132\003%z%z") then
        for _FORV_14_ = 1, 96 do
          if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\132\003%z%z"), 1) == "\232" then
            pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\132\003%z%z"), "\144\144\144\144\144")
          end
          if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\132\003%z%z"), 3) == "Q\255\021" then
            pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\132\003%z%z") + 1, "YY\144\144\144\144")
          end
          if pe.mmap_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\132\003%z%z"), 3) == "\000\255\021" then
            pe.mmap_patch_va(pevars.sigaddr + _FORV_14_ + string.find(L1_1, "h\132\003%z%z") + 1, "\144\144\144\144\144\144")
          end
        end
      end
    end
    return _FOR_.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
