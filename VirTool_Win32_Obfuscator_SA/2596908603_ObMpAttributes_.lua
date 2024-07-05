local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 80000 or L0_0 > 700000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
L1_1 = string.lower(L1_1)
if L1_1:match("%s=%s\"%d%d%d?(...-)%d%d%d?(...-)%d%d%d?") == nil then
  return mp.CLEAN
end
if L1_1:match("%s=%s\"%d%d%d?(...-)%d%d%d?(...-)%d%d%d?") == nil then
  return mp.CLEAN
end
if L1_1:match("%s=%s\"%d%d%d?(...-)%d%d%d?(...-)%d%d%d?") ~= L1_1:match("%s=%s\"%d%d%d?(...-)%d%d%d?(...-)%d%d%d?") then
  return mp.CLEAN
end
return mp.SUSPICIOUS
