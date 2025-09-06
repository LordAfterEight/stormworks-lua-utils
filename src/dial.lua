-- One-liner
Dial={px=0,py=0,sx=20,sy=20,ra=1,v=0}function Dial.new (px,py,sx,sy,ra)local o={}o.ra=ra o.px=px o.py=py o.sx=sx o.sy=sy o.draw=Dial.draw return o end function Dial.draw (self, v)local o = self screen.setColor(20,20,20)screen.drawRectF(o.px,o.py,o.sx,o.sy)screen.setColor(10,10,10)screen.drawRectF(o.px+1,o.py+1,o.sx-2,o.sy-2)screen.setColor(200,200,200)r = 0 if o.sx>o.sy then r=o.sy/2-2 else r=o.sx/2-2 end screen.drawCircle(o.px+o.sx/2-1,o.py+o.sy/2,r)x = (v/o.ra)/Pi*-20 screen.drawLine(o.px+o.sx/2, o.py+2, o.px+o.sx/2, o.py+7)screen.drawLine(o.px+o.sx/2, o.py+o.sy-2, o.px+o.sx/2, o.py+o.sy-7)screen.drawLine(o.px+2, o.py+o.sy/2, o.px+7, o.py+o.sy/2)screen.drawLine(o.px+o.sx-3, o.py+o.sy/2, o.px+o.sx-8, o.py+o.sy/2)if r*2>30 then screen.drawText(o.px+o.sx/2-2, o.py+8, "0")end if r*2>45 then value = string.format("%.1f", v)screen.setColor(40,40,40)screen.drawRect(o.px+o.sx/2-12, o.py+o.sy/2+o.sy/10, 24, 10)screen.setColor(20,30,20)screen.drawRectF(o.px+o.sx/2-12, o.py+o.sy/2+o.sy/10, 24, 10)screen.setColor(200,150,100,150)screen.drawText(o.px+o.sx/2-string.len(value)/2*5+1, o.py+o.sy/2+o.sy/10+2, value)end screen.setColor(200,150,100,220)screen.drawLine(o.px+o.sx/2,o.py+o.sy/2,(o.sx/2-5)*-math.sin(x) + o.px+o.sx/2, (o.sy/2-5)*-math.cos(x) + o.py+o.sy/2)screen.setColor(80,80,80)screen.drawCircleF(o.px+o.sx/2, o.py+o.sy/2, r/8)end



-- "Clean" code

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
	r = 0
	if o.sx>o.sy then r=o.sy/2-2 else r=o.sx/2-2 end
	screen.drawCircle(o.px+o.sx/2-1,o.py+o.sy/2,r)
	x = (v/o.ra)/Pi*-20
	screen.drawLine(o.px+o.sx/2, o.py+2, o.px+o.sx/2, o.py+7)
	screen.drawLine(o.px+o.sx/2, o.py+o.sy-2, o.px+o.sx/2, o.py+o.sy-7)
	screen.drawLine(o.px+2, o.py+o.sy/2, o.px+7, o.py+o.sy/2)
	screen.drawLine(o.px+o.sx-3, o.py+o.sy/2, o.px+o.sx-8, o.py+o.sy/2)
	if r*2>30 then
		screen.drawText(o.px+o.sx/2-2, o.py+8, "0")
	end
	if r*2>45 then
		value = string.format("%.1f", v)
		screen.setColor(40,40,40)
		screen.drawRect(o.px+o.sx/2-12, o.py+o.sy/2+o.sy/10, 24, 10)
		screen.setColor(20,30,20)
		screen.drawRectF(o.px+o.sx/2-12, o.py+o.sy/2+o.sy/10, 24, 10)
		screen.setColor(200,150,100,150)
		screen.drawText(o.px+o.sx/2-string.len(value)/2*5+1, o.py+o.sy/2+o.sy/10+2, value)
	end
	screen.setColor(200,150,100,220)
	screen.drawLine(o.px+o.sx/2,o.py+o.sy/2,(o.sx/2-5)*-math.sin(x) + o.px+o.sx/2, (o.sy/2-5)*-math.cos(x) + o.py+o.sy/2)
	screen.setColor(80,80,80)
	screen.drawCircleF(o.px+o.sx/2, o.py+o.sy/2, r/8)
end
