local L0_0, L1_1
if bm.GetProcedureMatchDuration(0) > bm.GetProcedureMatchDuration(1) then
  L1_1 = bm.GetProcedureMatchDuration(0) - bm.GetProcedureMatchDuration(1)
else
  L1_1 = bm.GetProcedureMatchDuration(1) - bm.GetProcedureMatchDuration(0)
end
if L1_1 > 20000000 then
  return mp.CLEAN
end
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p1
end
if string.match(L0_0, "^/home/") or string.match(L0_0, "^/root/") or string.match(L0_0, "^/tmp/") or string.match(L0_0, "^/var/") or string.match(L0_0, "^/dev/shm/") then
  bm.trigger_sig("BMExecutionFromScriptInSuspLocation", L0_0)
  return mp.INFECTED
end
return mp.CLEAN
