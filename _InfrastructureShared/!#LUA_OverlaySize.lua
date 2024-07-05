local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.isdamaged
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.arm_image
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.hasappendeddata
  end
elseif L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 < 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pesecs
L1_1 = L1_1[L0_0]
L1_1 = L1_1.PointerToRawData
L2_2 = pesecs
L2_2 = L2_2[L0_0]
L2_2 = L2_2.SizeOfRawData
L1_1 = L1_1 + L2_2
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L1_1 > L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2 - L1_1
L4_4 = "LUA:OverlaySize_gt_0x10000000"
if L3_3 <= 256 then
  L5_5 = string
  L5_5 = L5_5.format
  L5_5 = L5_5("LUA:OverlaySize_0x%x", L3_3)
  L4_4 = L5_5
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L5_5("LUA:OverlaySize_1_to_0x100")
elseif L3_3 <= 4096 then
  L5_5 = mp
  L5_5 = L5_5.bitand
  L5_5 = L5_5(L3_3, 4080)
  L4_4 = string.format("LUA:OverlaySize_0x%x_to_0x%x", L5_5, L5_5 + 16)
elseif L3_3 <= 65536 then
  L5_5 = mp
  L5_5 = L5_5.bitand
  L5_5 = L5_5(L3_3, 65280)
  L4_4 = string.format("LUA:OverlaySize_0x%x_to_0x%x", L5_5, L5_5 + 256)
elseif L3_3 <= 1048576 then
  L5_5 = mp
  L5_5 = L5_5.bitand
  L5_5 = L5_5(L3_3, 1044480)
  L4_4 = string.format("LUA:OverlaySize_0x%x_to_0x%x", L5_5, L5_5 + 4096)
elseif L3_3 <= 16777216 then
  L5_5 = mp
  L5_5 = L5_5.bitand
  L5_5 = L5_5(L3_3, 16711680)
  L4_4 = string.format("LUA:OverlaySize_0x%x_to_0x%x", L5_5, L5_5 + 65536)
elseif L3_3 <= 268435456 then
  L5_5 = mp
  L5_5 = L5_5.bitand
  L5_5 = L5_5(L3_3, 267386880)
  L4_4 = string.format("LUA:OverlaySize_0x%x_to_0x%x", L5_5, L5_5 + 1048576)
end
L5_5 = mp
L5_5 = L5_5.set_mpattribute
L5_5(L4_4)
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
