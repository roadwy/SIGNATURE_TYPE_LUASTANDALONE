local L0_0, L1_1
if not this_sigattrlog[1].matched and not this_sigattrlog[2].matched then
  return mp.CLEAN
elseif this_sigattrlog[3].matched and this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
  L1_1 = string.lower(this_sigattrlog[3].utf8p1)
end
if L0_0 ~= nil and L1_1 ~= nil and L0_0:match("%.([a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9])$") == L1_1:match("\\([a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9])[a-z0-9][a-z0-9]$") and L0_0:match("%.([a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9])$") ~= nil and L1_1:match("\\([a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9][a-z0-9])[a-z0-9][a-z0-9]$") ~= nil and mp.get_sigattr_event_count(16385) > 10 and 10 < mp.get_sigattr_event_count(16386) then
  return mp.INFECTED
end
return mp.CLEAN
