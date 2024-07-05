local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 < 5 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  L1_1,
  {
    sig = "\139|$\016\131\239\006\133\201t\0060\023IO\235",
    xray_type = 11,
    bytes_to_decrypt = 0
  }
}
L1_1 = {}
L1_1.sig = "\139|$\016\131\239\b\133\201t\0060\023IO\235"
L1_1.xray_type = 11
L1_1.bytes_to_decrypt = 0
L1_1 = pe
L1_1 = L1_1.xray_block
L1_1 = L1_1(L0_0, 2, 1, 0, 8192)
if L1_1 == mp.INFECTED then
  return mp.INFECTED
end
if pehdr.NumberOfSections >= 5 then
  if pesecs[5].VirtualSize >= 9216 then
    L1_1 = pe.xray_block(L0_0, 2, 4, 6656, 9216)
    if L1_1 == mp.INFECTED then
      return mp.INFECTED
    end
  end
  L1_1 = pe.xray_block(L0_0, 2, 4, 2048, 5120)
  if L1_1 == mp.INFECTED then
    return mp.INFECTED
  end
end
if pehdr.NumberOfSections >= 7 then
  L1_1 = pe.xray_block(L0_0, 2, 2, 0, 1024)
  if L1_1 == mp.INFECTED then
    return mp.INFECTED
  end
  L1_1 = pe.xray_block(L0_0, 2, 6, 0, 2048)
  if L1_1 == mp.INFECTED then
    return mp.INFECTED
  end
  if 5120 <= pesecs[7].VirtualSize then
    L1_1 = pe.xray_block(L0_0, 2, 6, 4096, 5120)
    if L1_1 == mp.INFECTED then
      return mp.INFECTED
    end
  end
  if pehdr.NumberOfSections >= 8 then
    L1_1 = pe.xray_block(L0_0, 2, 7, 0, 1024)
    if L1_1 == mp.INFECTED then
      return mp.INFECTED
    end
    if 5120 <= pesecs[8].VirtualSize then
      L1_1 = pe.xray_block(L0_0, 2, 7, 4096, 5120)
      if L1_1 == mp.INFECTED then
        return mp.INFECTED
      end
    end
  end
  if pehdr.NumberOfSections >= 9 and 5120 <= pesecs[9].VirtualSize then
    L1_1 = pe.xray_block(L0_0, 2, 8, 4096, 5120)
    if L1_1 == mp.INFECTED then
      return mp.INFECTED
    end
  end
end
return pe.xray_block(L0_0, 2, 5, 0, 4096)
