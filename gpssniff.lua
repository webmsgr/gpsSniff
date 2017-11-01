local arg = {...}
if #arg == 0 then 
print("use: gpsSniff <number of gps hosts>")
return
end
r = peripheral.wrap("top")
r.open(gps.CHANNEL_GPS)
ty = "User"
g = fs.open("log.log","a")
m = 1
print(arg[1])
while true do
a,b,c,d,e,dis = os.pullEvent("modem_message")
if g == nil then

g = fs.open("log.log","a")
g.writeLine("-GPS LOG-")
end
print(e)
if type(e) == type("hey") then
g.writeLine("Distance to player: "..dis)
end
if type(e) == "table" then
g.writeLine("--GPS CORDS--")
g.writeLine("x:"..e[1])
g.writeLine("y:"..e[2])
g.writeLine("z:"..e[3])
g.writeLine("Distance:"..dis)
g.writeLine("--------------------")
end
if not r.isOpen(d) then
r.open(d)
end

if m == tonumber(arg[1]) then
m = 1
g.close()
g = nil
end 
print(m..")type = "..type(e))
m = m + 1
end