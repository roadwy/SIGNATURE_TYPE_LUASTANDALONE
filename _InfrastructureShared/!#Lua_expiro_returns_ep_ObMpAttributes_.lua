if peattributes.isexe and peattributes.lastscn_writable and peattributes.self_modifying_code and peattributes.lastscn_executable and peattributes.executes_from_last_section and (mp.get_mpattribute("expiro_bc_count_loop_cp") or mp.get_mpattribute("expiro_aw_count_loop_cp") or mp.get_mpattribute("HSTR:Win32/Exprio.gen!lowfi")) then
  mp.set_mpattribute("Lua:expiro_returns_ep")
end
return mp.CLEAN
