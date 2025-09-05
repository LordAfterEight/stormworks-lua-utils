RGB={r=0,g=0,b=0}function RGB:new(r,g,b)local o={} o.r=r o.g=g o.b=b return o end Button={text="default",x=0,y=0,sx=0,sy=0,active=false,bg=RGB:new(10,10,10),fg=RGB:new(200,200,200)}function Button.new(text,px,py,sx,sy)local o={}o.text=text or"default"o.x=px o.y=py o.sx=sx o.sy=sy o.bg=RGB:new(10,10,10)o.fg=RGB:new(200,200,200)o.draw=Button.draw return o end function Button.draw(self)local o = self screen.setColor(o.bg.r+10,o.bg.g+10,o.bg.b+10)screen.drawRectF(o.x,o.y,o.sx,o.sy)if in_p and iCIR(in_x,in_y,o.x,o.y,o.sx,o.sy)then o.active = true screen.setColor(o.bg.r+5,o.bg.g+5,o.bg.b+5)else o.active = false screen.setColor(o.bg.r,o.bg.g,o.bg.b)end screen.drawRectF(o.x+1,o.y+1,o.sx-2,o.sy-2)screen.setColor(o.fg.r,o.fg.g,o.fg.b)screen.drawText((o.x+o.sx/2)-string.len(o.text)*5/2+1,o.y+o.sy/2-3,o.text)end function iCIR(x,y,rX,rY,rW,rH)return x>rX-1 and y>rY-1 and x<rX+rW and y<rY+rH end Pi = 3.17

Dial={px=0,py=0,sx=20,sy=20,ra=1,v=0}
function Dial.new (px,py,sx,sy,ra)
	local o={}
	o.ra=ra
	o.px=px
	o.py=py
	o.sx=sx
	o.sy=sy
	o.draw=Dial.draw
	return o
end
function Dial.draw (self, v)
	local o = self
	screen.setColor(20,20,20)
	screen.drawRectF(o.px,o.py,o.sx,o.sy)
	screen.setColor(10,10,10)
	screen.drawRectF(o.px+1,o.py+1,o.sx-2,o.sy-2)
	screen.setColor(200,200,200)
	screen.drawCircleF(o.sx/2, o.sy/2, 2.5)
	r = 0
	if o.sx>o.sy then r=o.sy/2-2 else r=o.sx/2-2 end
	screen.drawCircle(o.sx/2-1,o.sy/2,r)
	x = (-v)/Pi*20
	screen.drawLine(o.sx/2,o.sy/2,(o.sx/2-2)*-math.sin(x) + o.px+o.sx/2, (o.sy/2-2)*-math.cos(x) + o.py+o.sy/2)
end

