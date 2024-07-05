local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4096 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetNormalizedScript
L1_1 = L1_1(true)
L1_1 = L1_1.lower
L1_1 = L1_1(L1_1)
if #L1_1 - #string.gsub(L1_1, "<script.-</script>", "") > #L1_1 * 90 / 100 then
  return mp.INFECTED
end
return mp.CLEAN
