local L0_0, L1_1
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
else
  return mp.CLEAN
end
if this_sigattrlog[9].matched then
  L1_1 = this_sigattrlog[9].utf8p1
else
  return mp.CLEAN
end
if L1_1:match("/users/([^/]+)/") ~= L0_0:match("/users/([^/]+)/") then
  return mp.CLEAN
end
if L0_0:match("([^/]+)$") == nil then
  return mp.CLEAN
end
if L1_1:match("([^/]+).plist$") == nil then
  return mp.CLEAN
end
if L0_0:match("([^/]+)$") ~= L1_1:match("([^/]+).plist$") then
  return mp.CLEAN
end
return mp.INFECTED
