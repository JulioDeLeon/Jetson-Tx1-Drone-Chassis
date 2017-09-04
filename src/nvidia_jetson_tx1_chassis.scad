nozzle_diam_length = 0.4;
filament_diam_length = 1.75;

mini_itx_length = 170;
mini_itx_width = 170;
plate_thickness = 4; // use as factor?
chassis_z_depth = 45;

module mini_itx_mount_plate (length, width, thickness) {
    cube([length, width, thickness]);
};

module nvidia_jetson_backplate (length, width, thickness) {
    
};

module top_plate (length, width, thickness) {
    translate([0,0, chassis_z_depth + thickness]) {
        cube([length , width, thickness]);   
    }
};

module left_plate (length, width, thickness) {
    translate([0,0, chassis_z_depth + thickness]) {
        rotate(a=[0,90,0]) {
            cube([length, width, thickness]);
        };
    };
};

module right_plate (length, width, thickness) {
    
};

module frame(length, width, thickness) {
    
};

module chassis () {
    mini_itx_mount_plate(0,0,0);
    nvidia_jetson_backplate(0,0,0);
    left_plate(0,0,0);
    right_plate(0,0,0);
};

//chassis();

//top_plate(mini_itx_length, mini_itx_width, plate_thickness);
//left_plate(chassis_z_depth, mini_itx_width, plate_thickness);
//mini_itx_mount_plate(mini_itx_length, mini_itx_width, plate_thickness);