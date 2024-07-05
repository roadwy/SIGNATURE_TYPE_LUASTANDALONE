if not mp.get_mpattribute("HSTR:TrojanSpy:Win32/Xtrat!rsrc") then
  return mp.CLEAN
end
if peattributes.suspicious_timestamp and peattributes.dirty_wx_branch and peattributes.dt_error_heur_exit_criteria then
  return mp.INFECTED
end
return mp.CLEAN
