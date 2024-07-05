if mp.get_mpattribute("lua_injector_cl_ep") == false then
  return mp.CLEAN
end
if hstrlog[1].matched then
  mp.set_mpattribute("InjCLT!01" .. "Yaparih")
elseif hstrlog[2].matched then
  mp.set_mpattribute("InjCLT!01" .. "thissshit")
elseif hstrlog[3].matched then
  mp.set_mpattribute("InjCLT!01" .. "dressforless")
elseif hstrlog[4].matched then
  mp.set_mpattribute("InjCLT!01" .. "MunchenGood")
elseif hstrlog[5].matched then
  mp.set_mpattribute("InjCLT!01" .. "Nuremberg")
elseif hstrlog[6].matched then
  mp.set_mpattribute("InjCLT!01" .. "goingbacksoon")
end
return mp.CLEAN
