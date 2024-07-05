if mp.get_mpattribute("lua_injector_cl_ep") == false then
  return mp.CLEAN
end
if hstrlog[1].matched then
  mp.set_mpattribute("InjCLT!02" .. "itsapproaching")
elseif hstrlog[2].matched then
  mp.set_mpattribute("InjCLT!02" .. "thereyougo")
end
return mp.LOWFI
