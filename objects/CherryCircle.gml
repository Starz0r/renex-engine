#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
num_cherries=3
cycle_length=4 //seconds
motion_type=1
radius=80

time=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Calculate radius and angle based on timer and radius
// Then move each cherry to that location

var i,ct,r,a;

for (i=0;i<num_cherries;i+=1) {
    ct=time+i/num_cherries
    r=radius
    a=ct*360

    switch (motion_type) {
        case 1: {
            r=radius
            a=ct*360
        }break
        case 2: {
            r=radius*sin(time*pi*4)
            a=ct*360
        }break
        case 3: {
            r=radius
            a=360*dsin(a)
        }break
        case 4: {
            r=radius
            a=ct*360+30*dsin(a*num_cherries)
        }break
    }

    o[i].x=x+lengthdir_x(r,a)
    o[i].y=y+lengthdir_y(r,a)
}

time+=dt/(cycle_length*50)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

for (i=0;i<num_cherries;i+=1) {
    o[i]=instance_create(x,y,Cherry)
    o[i].sprite_index=sprite_index
    o[i].depth=depth
}

event_step()
