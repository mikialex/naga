@group(0) @binding(0) 
var global: binding_array<texture_2d<f32>>;
@group(0) @binding(1) 
var global_1: binding_array<sampler>;
var<private> global_2: vec4<f32>;

fn function() {
    let _e9 = textureSampleLevel(global[1], global_1[1], vec2<f32>(0.5, 0.5), 0.0);
    global_2 = _e9;
    return;
}

@fragment 
fn main() -> @location(0) vec4<f32> {
    function();
    let _e1 = global_2;
    return _e1;
}
