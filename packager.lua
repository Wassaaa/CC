p = peripheral.wrap("front")
turtle.select(12)
items = p.getAllStacks()
turtleDir = ("West")
quantity = 0
p.condenseItems()
 
function getStacks()
items = {}
    for i=1, p.getInventorySize() do
        if p.getStackInSlot(i) ~= nil then
            quantity = p.getStackInSlot(i).qty
            --if quantity >= 9 then
            if quantity >= 4 then
                doCrafting(i, quantity)
                print("crafting")
            end
        end
    end
end
 
function getStacksxx(_index)
    items = p.getAllStacks()
    if items[_index] ~= nil then
        quantity = items[_index]["qty"]
    end
    --if quantity >= 9 then
    if quantity >= 4 then
        doCrafting(_index, quantity)
        print("crafting")
    end
end
 
function doCrafting(slot, n)
    --craftNr = math.floor(n / 9)
    craftNr = math.floor(n / 4)
    p.pushItemIntoSlot(turtleDir,slot,craftNr, 1)
    p.pushItemIntoSlot(turtleDir,slot,craftNr, 2)
    p.pushItemIntoSlot(turtleDir,slot,craftNr, 5)
    p.pushItemIntoSlot(turtleDir,slot,craftNr, 6)
    --p.pushItemIntoSlot(turtleDir,slot,craftNr, 3)
    --p.pushItemIntoSlot(turtleDir,slot,craftNr, 7)
    --p.pushItemIntoSlot(turtleDir,slot,craftNr, 9)
    --p.pushItemIntoSlot(turtleDir,slot,craftNr, 10)
    --p.pushItemIntoSlot(turtleDir,slot,craftNr, 11)
    turtle.craft()
    turtle.dropUp()
end
 
 
 
while true do
    getStacks()
    p.condenseItems()
    --print("waiting 1")
    --os.sleep(0)
end