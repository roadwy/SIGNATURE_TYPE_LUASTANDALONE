if not this_sigattrlog[2].matched then
  return mp.CLEAN
end
if tonumber(this_sigattrlog[2].utf8p1) == nil or tonumber(this_sigattrlog[2].utf8p1) < 100000 then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
return mp.INFECTED
