use debug::PrintTrait;

#[derive(Copy,Drop)]
struct WeatherData {
temperature: u32,
humidity: u32,
windspeed: u32,
description: felt252,
}

trait WeatherDataTrait {
fn is_cold(self : @WeatherData)-> bool;
}

impl WeatherDataImpl of WeatherDataTrait {
fn is_cold(self: @WeatherData) -> bool{

let temp = *self.temperature;
if temp > 10{
true
}else {
false
}

}
}



fn main() {
let weather = WeatherData{
temperature: 6,
humidity: 10,
windspeed: 7,
description: 'weathear awesome',
};

weather.is_cold().print();
}