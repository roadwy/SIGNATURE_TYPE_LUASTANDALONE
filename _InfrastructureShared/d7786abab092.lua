local L2_0
L2_0 = false
if 1 <= hstrlog[1].hitcount or 1 <= hstrlog[2].hitcount or 1 <= hstrlog[3].hitcount then
  L2_0 = true
end
if L2_0 and true then
  return mp.INFECTED
end
return mp.CLEAN
