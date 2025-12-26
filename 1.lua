libstart = gg.getRangesList('libil2cpp.so')[1].start


REVERT = {
  [1] = {address = libstart+0x2E84E14, flags = 4},
  [2] = {address = libstart+0x2E84E18, flags = 4}
}
REVERT = gg.getValues(REVERT)

-- VALUE HACK
OZORA_ = {
  [1] = {address = libstart+0x2E84E14, value='h200080D2', flags=4},
  [2] = {address = libstart+0x2E84E18, value='~A8 RET',    flags=4}
}

function tes()
gg.alert(" Restart your Game If Not Work ")
end

toggled = false

function toggle()
  if not toggled then
    gg.setValues(OZORA_)
    toggled = true
    gg.toast("Hack ON")
  else
    gg.setValues(REVERT)
    toggled = false
    gg.toast("Hack OFF")
  end
end

-- contoh menu sekali jalan
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    m = gg.choice({
    'HACK FREE SHOP ON / OFF',
    'HELP',
    'EXIT'},nil,'Ozora_Mods')
    if m==1 then toggle() end
    if m==2 then tes() end
    if m==3 then os.exit() end
  end
end
