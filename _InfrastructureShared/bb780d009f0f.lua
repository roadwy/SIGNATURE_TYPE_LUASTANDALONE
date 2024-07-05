local L0_0
L0_0 = pe
L0_0 = L0_0.get_exports
L0_0 = L0_0()
if L0_0 < 10 then
  return mp.CLEAN
end
for _FORV_7_ = 1, L0_0 do
end
if 0 + ({
  svr_create = 1,
  svr_start = 1,
  svr_stop = 1,
  svr_close = 1,
  svr_user_accept = 1,
  svr_user_get_wlan = 1,
  svr_user_recv_notify = 1,
  svr_user_send_notify = 1,
  svr_user_manager = 1,
  svr_user_close = 1
})[pe.mmap_string_rva(L0_0()[_FORV_7_].namerva, 64)] == 10 then
  return mp.INFECTED
end
return mp.CLEAN
