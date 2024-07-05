local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 65536 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L1_1 = L1_1(L2_2, L0_0)
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, "chr%(&o(%d%d%d)&%)", function(A0_3)
  local L2_4
  L2_4 = string
  L2_4 = L2_4.format
  return L2_4("\"%c\"", tonumber(A0_3, 8))
end)
if L2_2 and L2_2(L1_1, "chr%(&o(%d%d%d)&%)", function(A0_5)
  local L2_6
  L2_6 = string
  L2_6 = L2_6.format
  return L2_6("\"%c\"", tonumber(A0_5, 8))
end) > 10 then
  L2_2 = string.gsub(L2_2, "chr%(&o(%d%d)&%)", function(A0_7)
    local L2_8
    L2_8 = string
    L2_8 = L2_8.format
    return L2_8("\"%c\"", tonumber(A0_7, 8))
  end)
  L2_2 = string.gsub(L2_2, "\"&\"(.)\"", "%1")
  L2_2 = string.gsub(L2_2, "\"&\"", "")
  L2_2 = string.gsub(L2_2, "&\"", "")
  mp.vfo_add_buffer(L2_2, "[Obfuscator.AB]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
return mp.CLEAN
