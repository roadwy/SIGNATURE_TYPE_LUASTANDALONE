if hstrlog[5].matched then
  mp.set_mpattribute("Lowfi:Komodia:WFP:NoVuln")
  return mp.CLEAN
end
return mp.INFECTED
