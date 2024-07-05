if pehdr.Machine == 34404 then
  mp.changedetectionname(805306425)
end
if hstrlog[5].matched then
  return mp.INFECTED
end
return mp.CLEAN
