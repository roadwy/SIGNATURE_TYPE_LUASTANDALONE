if hstrlog[5].matched then
  mp.set_mpattribute("Lowfi:Komodia:LSP:NoVuln")
  return mp.CLEAN
end
return mp.INFECTED
