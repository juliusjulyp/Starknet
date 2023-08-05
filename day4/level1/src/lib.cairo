use debug::PrintTrait;


fn main(){

    calc_rec(4, 2);
}

fn calc_rec(length: u128, width: u128){

    let area = length * width;

    area.print();

}