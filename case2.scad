

r_header=1.6;
r_height=6;

dock_r=2.5;
dock_height=3.5;

module Base()
{
    import("Base.stl");
}




module Final()
{
    //在Base的基础上添加
    union() {
    	Base();
        translate([20,20,0])
        {
            cylinder(h=r_height,r=r_header-0.2);
        }
        translate([20,-20,0])
        {
            cylinder(h=r_height,r=r_header-0.2);
        }
        translate([-20,20,0])
        {
            cylinder(h=r_height,r=r_header);
        }
        translate([-20,-20,0])
        {
            cylinder(h=r_height,r=r_header);
        }
        //底座
        translate([20,20,0])
        {
            cylinder(h=dock_height,r=dock_r);
        }
        translate([20,-20,0])
        {
            cylinder(h=dock_height,r=dock_r);
        }
        translate([-20,20,0])
        {
            cylinder(h=dock_height,r=dock_r);
        }
        translate([-20,-20,0])
        {
            cylinder(h=dock_height,r=dock_r);
        }
    }
}



color("Green"){
	render(convexity=4) {
		Final();
	}
}